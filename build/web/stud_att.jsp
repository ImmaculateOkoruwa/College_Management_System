
<%@page import="Dbcon.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%
    String depart1 = request.getParameter("depart1");
    String section1 = request.getParameter("section1");
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
                            <li><a href="student_home.jsp">User Home</a></li>
                            <li><a href="profile1.jsp">Student Profile</a></li>
                            <li class="selected"><a href="stud_att.jsp">Student Attendance</a></li>
                            <li><a href="announ_ad.jsp">Admin Announcement</a></li>
                            <li><a href="announ_st.jsp">Staff Announcement</a></li>
                            <li><a href="reset1.jsp">Reset Password</a></li>
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
                        <center><h2 style="font-size: 26px; color: #00A6EB; font-family: cursive">SELECT PRESENT OR ABSENT</h2>
                            <br><form method="get" action="stud_att.jsp" >

                                <select class="inputss" required="" name="section1" >
                                    <option value="">SELECT</option>
                                    <option value="Present">PRESENT</option>
                                    <option value="Absent">ABSENT</option>
                                </select>&nbsp;&nbsp;&nbsp;
                                <input type="Submit" value="View" class="button" >
                            </form></center><br><br>

                        <center><h2 style="font-size: 26px; color: #00A6EB; font-family: cursive">STUDENT ATTENDANCE DETAILS</h2>
                            <br><table border="2" style="text-align: center; margin-left: 0px; border-color: black">
                                <tr>
                                    <th style="text-align: center;width: 400px;  font-size: 16px; color: #000">Student ID</th>
                                    <th style="text-align: center;width: 200px;  font-size: 16px; color: #000">Date</th>
                                    <th style="text-align: center;width: 200px;  font-size: 16px; color: #000">Status</th>

                                </tr>
                                <tr>
                                    <%
                                        String str = (String) session.getAttribute("sssid");
                                        Connection con = null;
                                        Statement st = null;
                                        ResultSet rs = null;
                                        try {
                                            con = DbConnection.getConnection();
                                            st = con.createStatement();
                                            rs = st.executeQuery("select * from attendance WHERE  sstatus= '" + section1 + "' AND stud_id='" + str + "'");
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


