

<%@page import="Dbcon.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%
    String depart1 = request.getParameter("depart1");
    String section1 = request.getParameter("stud_id");
%>
<!doctype html>
<html>
    <head>
        <script src="js/index.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>College Management System</title>
        <link rel="stylesheet" href="css/reset.css" type="text/css" />
        <link rel="stylesheet" href="css/styles.css" type="text/css" />
        <link rel="stylesheet" href="css/main.css" type="text/css" />
        <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript" src="js/slider.js"></script>
        <script type="text/javascript" src="js/superfish.js"></script>
        <script type="text/javascript" src="js/custom.js"></script>
        <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0" />
    </head>
    <body>
        <div id="container" class="width">
            <header> 
                <div class="width"><br>
                    <br><h3><font style="color: white">College Management System</font></h3>
                    <nav>
                        <%---menu start ---%>		
                         <ul class="sf-menu dropdown">
                            <li class="selected"><a href="staff_home.jsp">Staff Home</a></li>
                            <li>
                                <a href="profile.jsp">Profile</a>
                            </li>
                            <li>
                                <a href="time_view.jsp">Time Table</a>
                            </li>
                            <li>
                                <a href="#">Attendance</a>
                                <ul>
                                    <li><a href="att_insert.jsp">Insert</a></li>
                                    <li><a href="att_view.jsp">Details</a></li>
                                </ul>
                            </li>
                            <li><a href="staff_announ.jsp">Announcements</a></li>
                            <li><a href="reset.jsp">Reset Password</a></li>
                            <li><a href="stud_de.jsp">Student Details</a></li>
                            <li>
                                <a href="report1.jsp">Report</a>
                            </li>
                            <li><a href="index.jsp">logout</a></li>
                        </ul>
                        <%---menu end ---%>		
                        <div class="clear"></div>
                    </nav>
                </div>
                <div class="clear"></div>
            </header>
            <div id="intro">
                <div class="width">
                    <div class="intro-content">
                        <!--<img src="img/ad.jpg" style="height: 400px; width: 920px" alt="">-->
                        <%----- Start body-----%>
                        <center><h2 style="font-size: 26px; color: #00A6EB; font-family: cursive">SELECT DEPART AND SECTION</h2>
                            <br><form method="get" action="att_view.jsp" >
                                <select class="inputss" required="" name="depart1" >
                                     <option value="">Department</option>
                                    <%                                        
                                        Connection con9 = null;
                                        Statement st9 = null;
                                        ResultSet rs9 = null;
                                        try {
                                            con9 = DbConnection.getConnection();
                                            st9 = con9.createStatement();
                                            rs9 = st9.executeQuery("select * from depart");
                                            while (rs9.next()) {%>

                                    <option value="<%=rs9.getString("dname")%>"><%=rs9.getString("dname")%></option>

                                    <%

                                        }
                                    %>
                                </select>
                                <%
                                    } catch (Exception ex11) {
                                        ex11.printStackTrace();
                                    }

                                %>&nbsp;&nbsp;&nbsp;
                                <select class="inputss" required="" name="stud_id" >
                                    <option value="">Stud ID</option>
                                    <%
                                        Connection con1 = null;
                                        Statement st1 = null;
                                        ResultSet rs1 = null;
                                        try {
                                            con1 = DbConnection.getConnection();
                                            st1 = con1.createStatement();
                                            rs1 = st1.executeQuery("SELECT * FROM stud_info");
                                            while (rs1.next()) {

                                                String string = rs1.getString("sid");
                                                System.out.println("id valus: " + string);


                                    %>
                                    <option value="<%=string%>"><%=string%></option>
                                    <% }
                                         } catch (Exception ex) {
                                             ex.printStackTrace();
                                         }%>
                                </select>&nbsp;&nbsp;&nbsp;
                                <input type="Submit" value="View" class="button" >
                            </form></center><br><br>

                        <center><h2 style="font-size: 26px; color: #00A6EB; font-family: cursive"> ATTENDANCE DETAILS</h2>
                            <br><table border="2" style="text-align: center; margin-left: 0px; border-color: black">
                                <tr>
                                    <th style="text-align: center;width: 200px;  font-size: 16px; color: #000">Student ID</th>
                                    <th style="text-align: center;width: 200px;  font-size: 16px; color: #000">Date</th>
                                    <th style="text-align: center;width: 200px;  font-size: 16px; color: #000">Status</th>


                                </tr>
                                <tr>
                                    <%
                                        Connection con = null;
                                        Statement st = null;
                                        ResultSet rs = null;
                                        try {
                                            con = DbConnection.getConnection();
                                            st = con.createStatement();
                                            rs = st.executeQuery("select * from attendance WHERE sdepart ='"+ depart1 +"' AND stud_id= '"+ section1 +"' ");
                                            while (rs.next()) {%>
                                    <td style="font-size: 16px; color: black; font-size: 20px"><br><%=rs.getString("stud_id")%></td>   
                                    <td style="font-size: 16px; color: blueviolet; font-size: 20px"><br><%=rs.getString("sdate")%></td>  
                                    <td style="font-size: 16px; color: blueviolet; font-size: 20px"><br><%=rs.getString("sstatus")%></td>  


                                </tr>
                                <%


                                        }
                                    } catch (Exception ex) {
                                        ex.printStackTrace();
                                    }

                                %>
                            </table>
                            <br><br><br><br><br><br><br><br>
                            <%----- Start body-----%>
                            </div>
                            </div>
                            </div>
                            <div id="body" class="width">
                                <section id="content" class="two-column with-right-sidebar">
                                </section>
                                <div class="clear"></div>
                            </div>
                            <footer class="width">
                                <div class="footer-bottom">
                                    <p>&copy; College Management System.</p>
                                </div>
                            </footer>
                    </div>
                    </body>
                    </html>


