
<%@ page  language="java" import="java.sql.*" errorPage="" %>
<%@page import="Dbcon.DbConnection"%>

<%

    String id = null, staffid = null, staffname = null, jdate = null, email = null;
    String phone = null;
    try {

        Connection con;
        con = DbConnection.getConnection();
        Statement st = con.createStatement();

        email = (String) session.getAttribute("sssemail");

        String s = "select id,staffid,staffname,jdate,email,phone from staff where email='" + email + "'";

        ResultSet rs = st.executeQuery(s);

        if (rs.next()) {
            id = rs.getString(1);
            staffid = rs.getString(2);
            staffname = rs.getString(3);
            jdate = rs.getString(4);
            email = rs.getString(5);
            phone = rs.getString(6);



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
                        <h2 style="font-size: 26px; color: #00A6EB; font-family: cursive">STAFF PROFILE </h2><BR>
                        <img src="view2.jsp?id=<%=id%>" style="width:220px;height:220px;"></img>
                        <%----- Start body-----%>
                        <form action="addrecord.psp" method="get">
                            <center><table>
                                    <tr><td>Staff ID: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" value="<%=staffid%>" readonly="" size="12"/></td></tr>
                                    <tr><td>Staff Name: <input type="text" value="<%=staffname%>" readonly="" size="8" /></td></tr>
                                    <tr><td>Join Date: &nbsp;&nbsp;&nbsp;<input type=text" value="<%=jdate%>" readonly="" size="8" /></td></tr>
                                    <tr><td>Email ID: &nbsp;&nbsp;&nbsp;<input type=text" value="<%=email%>" size="28" readonly="" /></td></tr>
                                    <tr><td>Contact: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=text" value="<%=phone%>" readonly="" size="8" /></td></tr>
                                   
                            </center></table>

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