
<%@ page  language="java" import="java.sql.*" errorPage="" %>
<%@page import="Dbcon.DbConnection"%>

<%

     String id = null, sid = null, sname = null, dob = null, email = null;
    String depart = null, section=null, phone=null, street=null,country=null;
    try {

        Connection con;
        con = DbConnection.getConnection();
        Statement st = con.createStatement();

        email = (String) session.getAttribute("ssemail");

         String s = "select id,sid,sname,dob,email,depart,section,phone,street,state,country from stud_info where email='" + email + "'";

        ResultSet rs = st.executeQuery(s);

        if (rs.next()) {
           id = rs.getString(1);
            sid = rs.getString(2);
            sname = rs.getString(3);
            dob = rs.getString(4);
            email = rs.getString(5);
            depart = rs.getString(6);
            section = rs.getString(7);
            phone = rs.getString(8);
            street = rs.getString(9);
            country = rs.getString(10);



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
                            <li><a href="student_home.jsp">User Home</a></li>
                            <li class="selected"><a href="profile1.jsp">Student Profile</a></li>
                            <li><a href="stud_att.jsp">Student Attendance</a></li>
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
                        <h2 style="font-size: 26px; color: #00A6EB; font-family: cursive">STUDENT PROFILE </h2><BR>
                        <img src="view3.jsp?id=<%=id%>" style="width:220px;height:220px;"></img>
                        <%----- Start body-----%>
                        <form action="addrecord.psp" method="get">
                            <center><table>
                                    <tr><td>Student ID: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" value="<%=sid%>" readonly="" size="12"/></td></tr>
                                    <tr><td>Student Name: <input type="text" value="<%=sname%>" readonly="" size="8" /></td></tr>
                                    <tr><td>Date of Birth: &nbsp;&nbsp;&nbsp;<input type=text" value="<%=dob%>" readonly="" size="8" /></td></tr>
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