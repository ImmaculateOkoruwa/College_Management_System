
<%@page import="java.util.UUID"%>
<%@page import="java.security.SecureRandom"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Dbcon.DbConnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Random"%>

<%
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
    int m1, m2, m3, m4, prac, total, avg;
    String depart = request.getParameter("depart");
    String section = request.getParameter("section");
    String studid = request.getParameter("studid");
    m1 = Integer.parseInt(request.getParameter("mark1"));
    m2 = Integer.parseInt(request.getParameter("mark2"));
    m3 = Integer.parseInt(request.getParameter("mark3"));
    m4 = Integer.parseInt(request.getParameter("mark4"));
    prac = Integer.parseInt(request.getParameter("practical"));

    total = m1 + m2 + m3 + m4 + prac;
    avg = total / 5;

    int testscore = avg;
    char grade;
    String remark;

    if (testscore >= 90) {
        grade = 'A';
        remark = "Very Good";
    } else if (testscore >= 80) {
        grade = 'B';
        remark = "Good";
    } else if (testscore >= 70) {
        grade = 'C';
        remark = "Average";
    } else if (testscore >= 60) {
        grade = 'D';
        remark = "Need Improvement";
    } else {
        grade = 'F';
        remark = "Poor";
    }
    System.out.println("Grade = " + grade);

    System.out.println("Mark1: " + m1 + "/nMark2: " + m2 + "\nMark3: " + m3 + "\nMark4" + m4 + "\nPractical: " + prac + "\nAverage: " + avg + "\nTotal: " + total + "\ngrade: " + grade + "\nremark: " + remark);

    Connection conn = null;
    Statement stt = null;

    try {
        conn = DbConnection.getConnection();
        stt = conn.createStatement();
        ResultSet rt3 = stt.executeQuery("select * from mark where studid='" + studid + "'");
        if (rt3.next()) {
            System.out.println("------------------->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
            response.sendRedirect("mark_insert.jsp?already=Student_Marks_Already_Inserted");
        } else {
            System.out.println("------------------->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>true");
            try {
                con = DbConnection.getConnection();
                st = con.createStatement();
                int is = st.executeUpdate("insert into mark(depart, section, studid, mark1, mark2, mark3, mark4, practical, avg, total, grade, remark) values ('" + depart + "','" + section + "','" + studid + "','" + m1 + "','" + m2 + "','" + m3 + "','" + m4 + "','" + prac + "','" + avg + "','" + total + "','" + grade + "','" + remark + "')");
                if (is != 0) {

                    response.sendRedirect("mark_insert.jsp?msg=success");
                } else {
                    response.sendRedirect("mark_insert.jsp?msgg=failed");
                }

            } catch (Exception ex) {
                ex.printStackTrace();
            }

        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }

%>