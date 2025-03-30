<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Dbcon.DbConnection"%>
<%
    String name = request.getParameter("uname");
    String pass = request.getParameter("pass");
    String Cpass = request.getParameter("cpass");
    String j = request.getQueryString();
    Connection con = DbConnection.getConnection();
    Statement st = con.createStatement();
System.out.println("Print Value"+name+pass+Cpass);
    int i = st.executeUpdate("update staff set secretkey = '" + Cpass + "' where staffid = '" + name + "' AND secretkey = '" + pass + "' ");
    if (i != 0) {
        response.sendRedirect("reset.jsp?msg=Password Changed");
    } else {
        response.sendRedirect("reset.jsp?msgg=Error");
    }
%>