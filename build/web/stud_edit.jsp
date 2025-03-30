
<%@ page  language="java" import="java.sql.*" errorPage="" %>
<%@page import="Dbcon.DbConnection"%>

<%

    String sid = null, sname = null, dob = null, email = null, depart = null, section = null, phone = null, street = null, state = null;
    String country = null, idd = null;
    try {

        Connection con;
        con = DbConnection.getConnection();
        Statement st = con.createStatement();

        idd = (String) request.getParameter("id");
        session.setAttribute("idddddsd", idd);
        System.out.println("idd >>-------------------->>>: " + idd);

        String s = "select sid,sname,dob,email,depart,section,phone,street,state  from stud_info where id='" + idd + "'";

        ResultSet rs = st.executeQuery(s);

        if (rs.next()) {
            sid = rs.getString(1);
            sname = rs.getString(2);
            dob = rs.getString(3);
            email = rs.getString(4);
            depart = rs.getString(5);
            section = rs.getString(6);
            phone = rs.getString(7);
            street = rs.getString(8);
            state = rs.getString(9);
            
            


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
                        <h2 style="font-size: 26px; color: #00A6EB; font-family: cursive">STUDENT INFORMATION UPDATE</h2><BR>
                        <%----- Start body-----%>
                        <form action="login_2.jsp" method="get">
                            <center><table>
                                    <tr><td>Student Id: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="sid" value="<%=sid%>"  size="25"/></td></tr>
                                    <tr><td>Student Name: <input type="text" name="sname" value="<%=sname%>"  size="25" /></td></tr>
                                    <tr><td>DOB: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="dob" value="<%=dob%>"  size="25"/></td></tr>
                                    <tr><td>Email: <input type="text" name="email" value="<%=email%>"  size="25" /></td></tr>
                                    <tr><td>Department: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="depart" value="<%=depart%>"  readonly="" size="25"/></td></tr>
                                    <tr><td>Section: <input type="text" name="section" value="<%=section%>"  size="25" /></td></tr>
                                    <tr><td>Phone: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="phone" value="<%=phone%>"  size="25"/></td></tr>
                                    <tr><td>Address: <input type="text" name="street" value="<%=street%>"  size="25" /></td></tr>
                                    <tr><td>State: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="state" value="<%=state%>"  size="25"/></td></tr>
                                   
                                    <input type="hidden" value="3" name="status" />
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