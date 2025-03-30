
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
        <style> 

            .inputs {
                background: white;
                font-size: 0.9rem;
                -moz-border-radius: 3px;
                -webkit-border-radius: 3px;
                border-radius: 3px;
                border: none;
                padding: 10px 10px;
                width: 200px;
                margin-bottom: 20px;
                box-shadow: inset 0 2px 3px rgba( 0, 0, 0, 0.1 );
                clear: both;
            }

            .inputs:focus {
                background: #fff;
                box-shadow: 0 0 0 3px #fff38e, inset 0 2px 3px rgba( 0, 0, 0, 0.2 ), 0px 5px 5px rgba( 0, 0, 0, 0.15 );
                outline: none;
            }
            .inputss {
                background: white;
                font-size: 0.9rem;
                -moz-border-radius: 3px;
                -webkit-border-radius: 3px;
                border-radius: 3px;
                border: none;
                padding: 10px 10px;
                width: 220px;
                margin-bottom: 20px;
                box-shadow: inset 0 2px 3px rgba( 0, 0, 0, 0.1 );
                clear: both;
            }

            .inputss:focus {
                background: #fff;
                box-shadow: 0 0 0 3px #fff38e, inset 0 2px 3px rgba( 0, 0, 0, 0.2 ), 0px 5px 5px rgba( 0, 0, 0, 0.15 );
                outline: none;
            }
            .button {
                background-color: #4CAF50; /* Green */
                border: none;
                color: white;
                padding: 10px 27px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
            }
        </style> 
        <%
            if (request.getParameter("msg") != null) {
        %>
        <script>alert('Online Registration Done');</script>
        <%            }
        %>
    </head>
    <body>
        <div id="container" class="width">
            <header> 
                <div class="width"><br>
                    <br><h3><font style="color: white">College Management System</font></h3>
                    <nav>
                        <%---menu start ---%>		
                        <ul class="sf-menu dropdown">
                            <li><a href="index.jsp"> Home</a></li>
                            <li><a href="Admin.jsp">Administrator Login</a></li>
                            <li><a href="staff.jsp">Staff Login</a></li>
                            <li><a href="student.jsp">Student Login</a></li>
                            <li class="selected"><a href="olreg.jsp">Online Registration</a></li>
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
                        <img src="images/ola.jpg" style="height: 200px; width: 920px" alt="">
                        <%----- Start body-----%>
                        <br><br><center><h2 style="font-size: 28px; color: #003da6; font-family: New Century Schoolbook, serif">ONLINE REGISTRATION</h2>
                            <br><form method="get" action="login.jsp">
                                <input type="text" class="inputs" name="sname" required="" placeholder="First Name"/>&nbsp;&nbsp;&nbsp; 
                                <input type="text" class="inputs" name="lname" required="" placeholder="Last Name" /><br> 
                                <input type="text" class="inputs" name="fname" required="" placeholder="Father Name" />&nbsp;&nbsp;&nbsp;
                                <input type="text" class="inputs" name="dob" required="" placeholder="DOB (eg.30/08/2015" /><br> 
                                <input type="text" class="inputs" name="scity" required="" placeholder="Your City" />&nbsp;&nbsp;&nbsp;
                                <input type="text" class="inputs" name="scountry" required="" placeholder="Your Country"  /><br> 
                                <input type="text" class="inputs" name="scode" required="" placeholder="Pin Code"/>&nbsp;&nbsp;&nbsp; 
                                <input type="text" class="inputs" name="snumber" required="" placeholder="Contact No" /><br> 
                                <input type="text" class="inputs" name="jcource" required="" placeholder="Course Name" />&nbsp;&nbsp;&nbsp;
                                <input type="email" class="inputs" name="semail" required="" placeholder="Email ID" /><br> 
                                <input type="hidden" value="6" name="status" />
                                <input type="Submit" value="Submit" class="button" >
                            </form></center>

                        <br><br>
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