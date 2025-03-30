<%@page import="Dbcon.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%String depart=request.getParameter("sdepart");%>
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
    <script>alert('Insertion Successfully');</script>
    <%            }
    %>
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
                            <li><a href="stud_de.jsp">Student Details</a></li>
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
                        <br><br><center><h2 style="font-size: 26px; color: #00A6EB; font-family: cursive">STUDENT ATTENDANCE</h2>
                            <br><form method="get" action="login.jsp" >
                                <input type="text" class="inputs" name="sdepart" value="<%=depart%>" readonly="" /><BR><br>
                                <select class="inputss" required="" name="ssection" >
                                    <option value="">Section</option>
                                    <option value="A01">A01</option>
                                    <option value="A02">A02</option>
                                </select>&nbsp;&nbsp;&nbsp;
                                <select class="inputss" required="" name="stud_id" >
                                    <option value="">Stud ID</option>
                                    <%
                                        Connection con = null;
                                        Statement st = null;
                                        ResultSet rs = null;
                                        try {
                                            con = DbConnection.getConnection();
                                            st = con.createStatement();
                                            rs = st.executeQuery("SELECT * FROM stud_info where depart='"+ depart +"'");
                                            while (rs.next()) {

                                                String string = rs.getString("sid");
                                                System.out.println("id valus: " + string);


                                    %>
                                    <option value="<%=string%>"><%=string%></option>
                                    <% }
                                         } catch (Exception ex) {
                                             ex.printStackTrace();
                                         }%>
                                </select>&nbsp;&nbsp;&nbsp;
                                <select class="inputss" required="" name="sstatus" >
                                    <option value="">Status</option>
                                    <option value="Present">Present</option>
                                    <option value="Absent">Leave</option>
                                </select><br><br>
                                <input type="date" class="inputs" name="sdate" required="" /><BR><br>
                                <input type="hidden" value="9" name="status" />
                                <input type="Submit" value="Insert"  class="button" >
                            </form></center><br><br><br><br><br>
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
