<%@ page import ="java.sql.*" %>
 
<% 

  String url = "jdbc:mysql://localhost:3306/college_management_system";
        String user = "root";
        String password = "root";
       int id=Integer.parseInt(request.getQueryString());
            Connection conn = DriverManager.getConnection(url, user, password);
            Statement stmt = conn.createStatement();
            String sql = "delete from depart where id='" + id + "'";
            stmt.executeUpdate(sql);
            System.out.println("sucessfully");
            response.sendRedirect("depart_view.jsp");        
%>