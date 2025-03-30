
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
            <%
            if (request.getParameter("msg") != null) {
        %>
        <script>alert('Password Changed Successfully');</script>
        <%            }
        %>
                    <%
            if (request.getParameter("msgg") != null) {
        %>
        <script>alert('Incorrect Staff ID and Password');</script>
        <%            }
        %>
        
        <%
        String sid=session.getAttribute("sssid").toString();
        %>
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
                            <li><a href="stud_att.jsp">Student Attendance</a></li>
                            <li><a href="announ_ad.jsp">Admin Announcement</a></li>
                            <li><a href="announ_st.jsp">Staff Announcement</a></li>
                            <li class="selected"><a href="reset1.jsp">Reset Password</a></li>
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
                        <center><h2 style="font-size: 26px; color: #00A6EB; font-family: cursive">RESET PASSWORD</h2>
                            <br><form method="get" action="update1.jsp" >
                                <label>Student Id</label>
                                <input type="text" class="inputs" name="uname" required="" value="<%=sid%>" placeholder="Student ID"/><br> <br> 
                                <label>Old Password</label>
                                <input type="password" class="inputs" name="pass" required="" placeholder="Old Password" /><br> <br>
                                <label>New Password</label>
                                <input type="password" class="inputs" name="cpass" required="" placeholder="New Password" /><br> <br>
                                <input type="Submit" value="Change" class="button" >
                            </form></center><br><br>

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
                    <p>&copy; Jpinfotech 2016.</p>
                </div>
            </footer>
        </div>
    </body>
</html>