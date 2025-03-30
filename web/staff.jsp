
<!doctype html>
<html>
    <head>

        <script src="js/index.js"></script>
        <link rel="stylesheet" href="css/style1.css">   
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
    <body background="hb.jpg">
        <%
            if (request.getParameter("msgg") != null) {
        %>
        <script>alert('Please Enter Correct username and Password');</script>
        <%            }
        %>
        <div id="container" class="width">
            <header> 
                <div class="width"><br>
                    <br><h3><font style="color: white">College Management System</font></h3>
                    <nav>
                        <%---menu start ---%>		
                        <ul class="sf-menu dropdown">
                            <li><a href="index.jsp"> Home</a></li>
                            <li><a href="Admin.jsp">Administrator Login</a></li>
                            <li class="selected"><a href="staff.jsp">Staff Login</a></li>
                            <li><a href="student.jsp">Student Login</a></li>
                            <li><a href="olreg.jsp">Online Registration</a></li>
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
                        <img src="images/staff2.jpg" style="height: 400px; width: 920px" alt="">
                        <%----- Start body-----%>
                        <br><br><center><h2 style="font-size: 28px; color: #003da6; font-family: New Century Schoolbook, serif">STAFF LOGIN</h2>
                            <br><form method="get" action="login.jsp">
                                <input type="text" class="inputs" name="uname" required="" placeholder="Staff ID"/><br> <br>  
                                <input type="password" class="inputs" name="pass" required="" placeholder="Password" /><br> <br> 
                                <input type="hidden" value="1" name="status" />
                                <input type="Submit" value="Submit" class="button" >
                            </form></center>

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
