
<%@page import="Dbcon.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%
    String depart1 = request.getParameter("sdepart1");
    String section1 = request.getParameter("section1");
    System.out.println("depart1---------------------" + depart1);
    System.out.println("section1-----------------" + section1);

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
                            <li class="selected"><a href="admin_home.jsp">Admin Home</a></li>
                            <li>
                                <a href="#">Check Options</a>
                                <ul>
                                    <li><a href="cource_view.jsp">Announcement</a></li>
                                    <li><a href="time_insert.jsp">Timetable Insert</a></li>
                                    <li><a href="time_view1.jsp">Timetable view</a></li>
                                    <li><a href="report.jsp">Staff Report</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">Department Manage</a>
                                <ul>
                                    <li><a href="depart_insert.jsp">Insert</a></li>
                                    <li><a href="depart_view.jsp">Details</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">Student Manage</a>
                                <ul>
                                    <li><a href="stud_inser.jsp">Insert</a></li>
                                    <li><a href="stud_view.jsp">Details</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">Staff Manage</a>
                                <ul>
                                    <li><a href="insert_staff.jsp">Insert</a></li>
                                    <li><a href="staff_view.jsp">Details</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">Mark Insert</a>
                                <ul>
                                    <li><a href="mark_insert.jsp">Insert</a></li>
                                    <li><a href="mark_view.jsp">Details</a></li>
                                </ul>
                            </li>
                            <li><a href="olreg1.jsp">Online Reg</a></li>
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
                            <br><form method="get" action="mark_view.jsp" >
                                <select class="inputss" required="" name="sdepart1" >
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
                                <select class="inputss" required="" name="section1" >
                                    <option value="">Section</option>
                                    <option value="A01">A01</option>
                                    <option value="A02">A02</option>
                                </select>&nbsp;&nbsp;&nbsp;
                                <input type="Submit" value="View" class="button" >
                            </form></center><br><br>

                        <center><h2 style="font-size: 26px; color: #00A6EB; font-family: cursive">STUDENT MARK DETAILS</h2>
                            <br><table border="2" style="text-align: center; margin-left: 0px; border-color: black">
                                <tr>
                                    <th style="text-align: center;width: 400px;  font-size: 16px; color: #000">Stud ID</th>
                                    <th style="text-align: center;width: 200px;  font-size: 16px; color: #000">Mark1</th>
                                    <th style="text-align: center;width: 200px;  font-size: 16px; color: #000">Mark2</th>
                                    <th style="text-align: center;width: 200px;  font-size: 16px; color: #000">Mark3</th>
                                    <th style="text-align: center;width: 200px;  font-size: 16px; color: #000">Mark4</th>
                                    <th style="text-align: center;width: 200px;  font-size: 16px; color: #000">Practical</th>
                                    <th style="text-align: center;width: 200px;  font-size: 16px; color: #000">Total</th>
                                    <th style="text-align: center;width: 200px;  font-size: 16px; color: #000">Percentage </th>
                                    <th style="text-align: center;width: 200px;  font-size: 16px; color: #000">Grade</th>
                                    <th style="text-align: center;width: 200px;  font-size: 16px; color: #000">Remark</th>
                                </tr>
                                <tr>
                                    <%                                        Connection con = null;
                                        Statement st = null;
                                        ResultSet rs = null;
                                        try {
                                            con = DbConnection.getConnection();
                                            st = con.createStatement();
                                            System.out.println("depart1" + depart1);
                                            System.out.println("section1" + section1);
                                            rs = st.executeQuery("select * from mark WHERE depart ='" + depart1 + "' AND section= '" + section1 + "' ");
                                            while (rs.next()) {%>
                                    <td style="font-size: 16px; color: black; font-size: 20px"><br><%=rs.getString("studid")%></td>   
                                    <td style="font-size: 16px; color: blueviolet; font-size: 20px"><br><%=rs.getString("mark1")%></td>  
                                    <td style="font-size: 16px; color: blueviolet; font-size: 20px"><br><%=rs.getString("mark2")%></td>  
                                    <td style="font-size: 16px; color: blueviolet; font-size: 20px"><br><%=rs.getString("mark3")%></td>  
                                    <td style="font-size: 16px; color: blueviolet; font-size: 20px"><br><%=rs.getString("mark4")%></td> 
                                    <td style="font-size: 16px; color: blueviolet; font-size: 20px"><br><%=rs.getString("practical")%></td>  
                                    <td style="font-size: 16px; color: blueviolet; font-size: 20px"><br><%=rs.getString("total")%></td> 
                                    <td style="font-size: 16px; color: blueviolet; font-size: 20px"><br><%=rs.getString("avg")%></td> 
                                    <td style="font-size: 16px; color: blueviolet; font-size: 20px"><br><%=rs.getString("grade")%></td> 
                                    <td style="font-size: 16px; color: blueviolet; font-size: 20px"><br><%=rs.getString("remark")%></td> 
                                </tr>
                                <%

                                        }
                                    } catch (Exception ex) {
                                        ex.printStackTrace();
                                    }

                                %>
                            </table>
                            <br><br><br><br><br>
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


