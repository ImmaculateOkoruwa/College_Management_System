package Dbcon;

import java.io.File;
import java.io.FileWriter;
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
import java.security.SecureRandom;
import java.util.Random;

@MultipartConfig(maxFileSize = 16177215)    // upload file's size up to 16MB
public class FileUploadDBServlet extends HttpServlet {

    // database connection settings
    private String dbURL = "jdbc:mysql://localhost:3306/college_management_system";
    private String dbUser = "root";
    private String dbPass = "root";

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        String staffid =request.getParameter("staffid");
        String staffname =request.getParameter("staffname");
        String jdate =request.getParameter("jdate");
        String email =request.getParameter("email");
        String phone =request.getParameter("phone");
        InputStream inputStream = null;

        //server 1
        Random RANDOM = new SecureRandom();
        int PASSWORD_LENGTH = 4;
        String letters = "123456789";
        String Secretkey = "";
        for (int i = 0; i < PASSWORD_LENGTH; i++) {
            int index = (int) (RANDOM.nextDouble() * letters.length());
            Secretkey += letters.substring(index, index + 1);
        }
        String msg = "Staff Name: " + staffname + "\n\nStaff id: " + staffid + "\n\nPassword: " + Secretkey;

        System.out.println("staff ID: " + staffid + "staff Name: " + staffname + "Join Date: " + jdate + "email: " + email + "Phone: " + phone);
        Part filePart = request.getPart("photo");
        if (filePart != null) {
            // prints out some information for debugging
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());

            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
        }

        String folderPath = "C:\\Users\\Immaculate Okoruwa\\College Management\\staff"; // Replace with the desired folder path
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
        Connection conn = null; // connection to the database
        String message = null;  // message will be sent back to client

        try {
            // connects to the database
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);

            // constructs SQL statement
            String sql = "INSERT INTO staff (staffid, staffname, jdate, email, phone, Secretkey, photo) values (?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, staffid);
            statement.setString(2, staffname);
            statement.setString(3, jdate);
            statement.setString(4, email);
            statement.setString(5, phone);
            statement.setString(6, Secretkey);
            if (inputStream != null) {
                // fetches input stream of the upload file for the blob column
                statement.setBlob(7, inputStream);
            }

            // sends the statement to the database server
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
                // closes the database connection
                try {
                    conn.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
            // sets the message in request scope
            request.setAttribute("Message", message);
            getServletContext().getRequestDispatcher("/insert_staff.jsp").forward(request, response);
        }
    }
}
