

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
                        <img src="img/ad.jpg" style="height: 400px; width: 920px" alt="">
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


