
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
                background: aliceblue;
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
                background: aliceblue;
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
        <script>alert('Insertion Successfully');</script>
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
                            <li class="selected"><a href="admin_home.jsp">Cloud Home</a></li>
                            <li>
                                <a href="cource_view.jsp"> Course Manage</a>
                            </li>
                            <li>
                                <a href="#">Department Manage</a>
                                <ul>
                                    <li><a href="depart_insert.jsp">Insert</a></li>
                                    <li><a href="depart_view.jsp">Details</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">Section Creation</a>
                                <ul>
                                    <li><a href="section_insert.jsp">Insert</a></li>
                                    <li><a href="section_view.jsp">Details</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">Subject Manage</a>
                                <ul>
                                    <li><a href="subject_insert.jsp">Insert</a></li>
                                    <li><a href="subject_view.jsp">Details</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">Staff Manage</a>
                                <ul>
                                    <li><a href="doc_reg.jsp">Insert</a></li>
                                    <li><a href="doc_login.jsp">Details</a></li>
                                </ul>
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
                        <br><br><center><h2 style="font-size: 26px; color: #552200; font-family: cursive">INSERT Department</h2>
                            <br><form action="login.jsp" method="get"> 
                                <input type="text" class="inputs" name="cname" required="" placeholder="Cource Name" />&nbsp;&nbsp;&nbsp; 
                                <input type="text" class="inputs" name="sectionid" required="" placeholder="Section ID" /><br> 
                                <input type="text" class="inputs" name="seats" required="" placeholder="Seats" />&nbsp;&nbsp;&nbsp;
                                <input type="text" class="inputs" name="yocc" required="" placeholder="Year of Creation" /><br> 
                                <input type="hidden" value="5" name="status" />
                                <input type="Submit" value="INSERT" class="button" >
                            </form></center>

                        <br><br><br><br><br><br><br><br><br><br>
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