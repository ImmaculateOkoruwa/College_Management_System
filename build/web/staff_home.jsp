

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
        <%
            if (request.getParameter("msg") != null) {
        %>
        <script>alert('Login Succesfully');</script>
        <%            }
        %>
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
                        <img src="images/staff.jpg" style="height: 400px; width: 920px" alt="">
                        <%----- Start body-----%>

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



