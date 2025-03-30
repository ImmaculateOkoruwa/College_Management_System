package Dbcon;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import java.io.File;
import java.io.FileWriter;
import java.security.SecureRandom;
import java.util.Random;


@MultipartConfig(maxFileSize = 16177215)    // upload file's size up to 16MB
public class FileUploadDB extends HttpServlet {

    // database connection settings
    private String dbURL = "jdbc:mysql://localhost:3306/college_management_system";
    private String dbUser = "root";
    private String dbPass = "root";

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        
        String sid =request.getParameter("sid");
        String sname =request.getParameter("sname");
        String dob =request.getParameter("dob");
        String email =request.getParameter("email");
        String depart =request.getParameter("depart");
        String section =request.getParameter("section");
        String phone =request.getParameter("phone");
        String street =request.getParameter("street");
        String state =request.getParameter("state");
        String country =request.getParameter("country");
        // 10
        InputStream inputStream = null;

        //server 1
        Random RANDOM = new SecureRandom();
        int PASSWORD_LENGTH = 5;
        String letters = "123456789";
        String Secretkey = "";
        for (int i = 0; i < PASSWORD_LENGTH; i++) {
            int index = (int) (RANDOM.nextDouble() * letters.length());
            Secretkey += letters.substring(index, index + 1);
        }
        String msg = "Student id: " + sid+ "\n\nStudent Name: " + sname + "\n\nPassword: " + Secretkey;

        System.out.println("Student id: " + sid+sname+dob+email+depart+section+phone+street+state+country);
        Part filePart = request.getPart("photo");
        if (filePart != null) {

            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());
            inputStream = filePart.getInputStream();
        }
 String folderPath = "D:/College Management/Students"; // Replace with the desired folder path
            String fileName = email + ".txt";
            String content = msg;
            // Create the folder if it doesn't exist
            File folder = new File(folderPath);
            if (!folder.exists()) {
                if (folder.mkdir()) {
                    System.out.println("Folder created successfully.");
                } else {
                    System.out.println("Failed to create the folder.");
                    return;
                }
            }
        Connection conn = null; 
        String message = null;  

        try {

            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);

            String sql = "INSERT INTO stud_info (sid, sname, dob, email, depart, section, phone, street, state, country, Secretkey, photo) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, sid);
            statement.setString(2, sname);
            statement.setString(3, dob);
            statement.setString(4, email);
            statement.setString(5, depart);
            statement.setString(6, section);
            statement.setString(7, phone);
            statement.setString(8, street);
            statement.setString(9, state);
            statement.setString(10, country);
            statement.setString(11, Secretkey);
            if (inputStream != null) {

                statement.setBlob(12, inputStream);
            }

            int row = statement.executeUpdate();
            if (row > 0) {
                 File file = new File(folderPath, fileName);
                    try (FileWriter writer = new FileWriter(file)) {
                        writer.write(content);
                        System.out.println("Content written to the file successfully.");
                    } catch (IOException e) {
                        System.out.println("Error occurred while writing to the file: " + e.getMessage());
                    }

                message = "File uploaded and saved into database";
            }
        } catch (SQLException ex) {
            message = "ERROR: " + ex.getMessage();
            ex.printStackTrace();
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
            request.setAttribute("Message", message);
            getServletContext().getRequestDispatcher("/stud_inser.jsp").forward(request, response);
        }
    }
}