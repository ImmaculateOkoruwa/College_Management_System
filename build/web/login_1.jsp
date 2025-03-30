
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>

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

    //ANNOUNSMENT
    
    String department = request.getParameter("department");
    String section = request.getParameter("section");
    String announ = request.getParameter("announ");

   Date date = new Date();
   String date1 =date.toString();
   String announ1 = request.getParameter("announ");
    int status = Integer.parseInt(request.getParameter("status"));
    try {
        con = DbConnection.getConnection();
        st = con.createStatement();
        switch (status) {

            case 1:

                try {
                    con = DbConnection.getConnection();
                    st = con.createStatement();
                    int i = st.executeUpdate("insert into staff_announ(department, section, announ) values ('" + department + "','" + section + "','" + announ + "')");
                    if (i != 0) {

                        response.sendRedirect("staff_announ.jsp?msg=success");
                    } else {
                        response.sendRedirect("staff_announ.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;
            case 2:

                try {
                    con = DbConnection.getConnection();
                    st = con.createStatement();
                    int i = st.executeUpdate("insert into admin_announ(date, announ) values ('" + date1 + "','" + announ1 + "')");
                    if (i != 0) {

                        response.sendRedirect("cource_view.jsp?msg=success");
                    } else {
                        response.sendRedirect("cource_view.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;

            default:
                response.sendRedirect("index.html");
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }

%>