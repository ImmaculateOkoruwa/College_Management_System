

<%@page import="Dbcon.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%
    String depart1 = request.getParameter("depart1");
    String section1 = request.getParameter("stud_id");
%>
<%@ page  language="java" import="java.sql.*" errorPage="" %>
<%@page import="Dbcon.DbConnection"%>

<%

    String id = null, sid = null, sname = null, dob = null, email = null;
    String depart = null, section=null, phone=null, street=null,country=null;
    try {

        Connection con;
        con = DbConnection.getConnection();
        Statement st = con.createStatement();

       

        String s = "select id,sid,sname,dob,email,depart,section,phone,street,state,country from stud_info where sid='" + section1 + "' AND depart='"+depart1+"'";

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
                        <!--<img src="img/ad.jpg" style="height: 400px; width: 920px" alt="">-->
                        <%----- Start body-----%>
                        <center><h2 style="font-size: 26px; color: #00A6EB; font-family: cursive">SELECT DEPART AND SECTION</h2>
                            <br><form method="get" action="stud_de.jsp" >
                                <select class="inputss" required="" name="depart1" >
                                   <option value="">Department</option>
                                    <%                                        
                                        Connection con9 = null;
                                        Statement st9 = null;
                                        ResultSet rs9 = null;
                                        try {
                                            con9 = DbConnection.getConnection();
                                            st9 = con9.createStatement();
                                            rs9 = st9.executeQuery("select * from depart");
                                            while (rs9.next()) {%>

                                    <option value="<%=rs9.getString("dname")%>"><%=rs9.getString("dname")%></option>

                                    <%

                                        }
                                    %>
                                </select>
                                <%
                                    } catch (Exception ex11) {
                                        ex11.printStackTrace();
                                    }

                                %>&nbsp;&nbsp;&nbsp;
                                <select class="inputss" required="" name="stud_id" >
                                    <option value="">Stud ID</option>
                                    <%
                                        Connection con1 = null;
                                        Statement st1 = null;
                                        ResultSet rs1 = null;
                                        try {
                                            con1 = DbConnection.getConnection();
                                            st1 = con1.createStatement();
                                            rs1 = st1.executeQuery("SELECT * FROM stud_info");
                                            while (rs1.next()) {

                                                String string = rs1.getString("sid");
                                                System.out.println("id valus: " + string);


                                    %>
                                    <option value="<%=string%>"><%=string%></option>
                                    <% }
                                         } catch (Exception ex) {
                                             ex.printStackTrace();
                                         }%>
                                </select>&nbsp;&nbsp;&nbsp;
                                <input type="Submit" value="View" class="button" >
                            </form></center><br><br>
                            <h2 style="font-size: 26px; color: #00A6EB; font-family: cursive">STUDENT DETAILS </h2><BR>
                        <img src="view4.jsp?id=<%=id%>" style="width:220px;height:220px;"></img>
                             <form action="addrecord.psp" method="get">
                            <center><table>
                                    <tr><td>Student ID:  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" value="<%=sid%>" readonly="" size="12"/></td></tr>
                                    <tr><td>Student Name: &nbsp;&nbsp;<input type="text" value="<%=sname%>" readonly="" size="8" /></td></tr>
                                    <tr><td>Date of Birth: &nbsp;&nbsp;&nbsp;<input type=text" value="<%=dob%>" readonly="" size="8" /></td></tr>
                                    <tr><td>Email ID: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=text" value="<%=email%>" size="28" readonly="" /></td></tr>
                                    <tr><td>Department: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=text" value="<%=depart%>" readonly="" size="8" /></td></tr>
                                   <tr><td>Section: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" value="<%=section%>" readonly="" size="12"/></td></tr>
                                    <tr><td>Phone No: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" value="<%=phone%>" readonly="" size="8" /></td></tr>
                                    <tr><td>Street: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=text" value="<%=street%>" readonly="" size="8" /></td></tr>
                                    <tr><td>Country: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=text" value="<%=country%>" size="28" readonly="" /></td></tr>
                                    
                            </center></table>

                         <%

                                } catch (Exception e) {
                                    System.out.println(e);
                                }
                            %>
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



