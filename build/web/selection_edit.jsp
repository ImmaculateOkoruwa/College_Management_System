
<%@ page  language="java" import="java.sql.*" errorPage="" %>
<%@page import="Dbcon.DbConnection"%>

<%

    String id = null, cname = null, sectionid = null, seats = null, yocc = null;
    String phone = null, idd = null;
    try {

        Connection con;
        con = DbConnection.getConnection();
        Statement st = con.createStatement();

        idd = (String) request.getParameter("id");
        session.setAttribute("idddd", idd);
        System.out.println("idd >>-------------------->>>: " + idd);

        String s = "select cname,sectionid,seats,yocc from section where id='" + idd + "'";

        ResultSet rs = st.executeQuery(s);

        if (rs.next()) {
            cname = rs.getString(1);
            sectionid = rs.getString(2);
            seats = rs.getString(3);
            yocc = rs.getString(4);


        } else {
            out.print("Please check your login credentials");
        }


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
                            <!--                            <li class="selected"><a href="staff_home.jsp">Staff Home</a></li>
                                                        <li>
                                                            <a href="profile.jsp">Profile</a>
                                                        </li>
                                                        <li>
                                                            <a href="#">Time Table</a>
                                                            <ul>
                                                                <li><a href="time_insert.jsp">Insert</a></li>
                                                                <li><a href="time_view.jsp">Details</a></li>
                                                            </ul>
                                                        </li>
                                                        <li>
                                                            <a href="#">Attendance</a>
                                                            <ul>
                                                                <li><a href="att_insert.jsp">Insert</a></li>
                                                                <li><a href="att_view.jsp">Details</a></li>
                                                            </ul>
                                                        </li>
                                                        <li>
                                                            <a href="#">Stud Mark</a>
                                                            <ul>
                                                                <li><a href="mark_insert.jsp">Insert</a></li>
                                                                <li><a href="mark_view.jsp">Details</a></li>
                                                            </ul>
                                                        </li>
                                                        <li><a href="staff_announ.jsp">Announcements</a></li>
                                                        <li><a href="reset.jsp">Reset Password</a></li>
                                                        <li><a href="stud_de.jsp">Student Details</a></li>-->
                            <li><a href="section_view.jsp">Back</a></li>
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
                        <h2 style="font-size: 26px; color: #00A6EB; font-family: cursive">SECTION UPDATE</h2><BR>
                        <%----- Start body-----%>
                        <form action="login_2.jsp" method="get">
                            <center><table>
                                    <tr><td>Course Name: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="cname" value="<%=cname%>"  size="12"/></td></tr>
                                    <tr><td>Section: <input type="text" name="sectionid" value="<%=sectionid%>"  size="8" /></td></tr>
                                    <tr><td>Seats: &nbsp;&nbsp;&nbsp;<input type=text" name="seats" value="<%=seats%>" size="8" /></td></tr>
                                    <tr><td>Year: &nbsp;&nbsp;&nbsp;<input type=text" name="yocc" value="<%=yocc%>" size="28" /></td></tr>
                                    <input type="hidden" value="1" name="status" />
                                   
                                </table>
                                     <tr><input type="Submit" value="UPDATE" class="button" ></tr>
                            </center></form><br><br><br><br>

                                <%----- Start body-----%>
                                <%

                                    } catch (Exception e) {
                                        System.out.println(e);
                                    }
                                %>
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