

<%@page import="java.util.UUID"%>
<%@page import="java.security.SecureRandom"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Dbcon.DbConnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Random"%>

<%
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;

    // Time table
    String depart1 = request.getParameter("sdepart1");
    String section1 = request.getParameter("section1");
    String day = request.getParameter("day");
    String IHours = request.getParameter("IHours");
    String IIHours = request.getParameter("IIHours");
    String IIIHours = request.getParameter("IIIHours");
    String IVHours = request.getParameter("IVHours");
    String VHours = request.getParameter("VHours");
    String VIHours = request.getParameter("VIHours");
    String VIIHours = request.getParameter("VIIHours");
    //
    String sname = request.getParameter("sname");
    String lname = request.getParameter("lname");
    String fname = request.getParameter("fname");
    String dob = request.getParameter("dob");
    String scity = request.getParameter("scity");
    String scountry = request.getParameter("scountry");
    String scode = request.getParameter("scode");
    String snumber = request.getParameter("snumber");
    String jcource = request.getParameter("jcource");
    String semail = request.getParameter("semail");

    //

    String name = request.getParameter("uname");
    String pass = request.getParameter("pass");
    String Eamil = request.getParameter("email");
    String Mobile = request.getParameter("mobile");
    String State = request.getParameter("state");
    String Country = request.getParameter("country");

    String id = request.getParameter("id");
    String dname = request.getParameter("dname");
    String yoc = request.getParameter("yoc");

    String cname = request.getParameter("cname");
    String sectionid = request.getParameter("sectionid");
    String seats = request.getParameter("seats");
    String yocc = request.getParameter("yocc");

    //Atten
    String sdepart = request.getParameter("sdepart");
    String ssection = request.getParameter("ssection");
    String stud_id = request.getParameter("stud_id");
    String sstatus = request.getParameter("sstatus");
    String sdate = request.getParameter("sdate");
    
    //staff status
    String departments = request.getParameter("departments");
    String sections = request.getParameter("sections");
    String staffidd = request.getParameter("staffidd");
    String datee = request.getParameter("datee");
    String subj = request.getParameter("subj");
    String year = request.getParameter("year");

    int in = 1;
    System.out.println("User Details" + Mobile + State + Eamil + name + pass + Country);
    String User = "User";
    String Doctor = "Doctor";

    int status = Integer.parseInt(request.getParameter("status"));
    try {
        con = DbConnection.getConnection();
        st = con.createStatement();
        switch (status) {
            case 1:
                try {
                    rs = st.executeQuery("select * from staff where staffid='" + name + "' AND secretkey='" + pass + "'");
                    if (rs.next()) {
                        session.setAttribute("sssemail", rs.getString("email"));
                        session.setAttribute("sssstaff", rs.getString("staffid"));
//                        session.setAttribute("ssscountry", rs.getString("country"));
                        response.sendRedirect("staff_home.jsp?msg=success");
                    } else {
                        response.sendRedirect("staff.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;
            case 2:
                try {
                    rs = st.executeQuery("select * from stud_info where sid='" + name + "' AND Secretkey='" + pass + "'");
                    if (rs.next()) {
                       session.setAttribute("ssemail", rs.getString("email"));
                        session.setAttribute("sssid", rs.getString("sid"));
                        session.setAttribute("ssdeparttt", rs.getString("depart"));
                        System.out.println(">>------>>Done: "+session.getAttribute("ssdeparttt"));
//                        session.setAttribute("ssstate", rs.getString("state"));
//                        session.setAttribute("sscountry", rs.getString("country"));

                        response.sendRedirect("student_home.jsp?msg=success");
                    } else {
                        response.sendRedirect("student.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;

            case 3:

                try {
                    con = DbConnection.getConnection();
                    st = con.createStatement();
                    int i = st.executeUpdate("insert into report(departments, sections, staffidd, datee, subj, year) values ('" + departments + "','" + sections + "','" + staffidd + "','" + datee + "','" + subj + "','" + year + "')");
                    if (i != 0) {

                        response.sendRedirect("report1.jsp?msg=success");
                    } else {
                        response.sendRedirect("report1.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    response.sendRedirect("report1.jsp?msggg=failed");
                }
                break;

            case 4:

                try {
                    con = DbConnection.getConnection();
                    st = con.createStatement();
                    int i = st.executeUpdate("insert into depart(did, dname, yoc) values ('" + id + "','" + dname + "','" + yoc + "')");
                    if (i != 0) {

                        response.sendRedirect("depart_insert.jsp?msg=success");
                    } else {
                        response.sendRedirect("depart_insert.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;

            case 5:

                try {
                    con = DbConnection.getConnection();
                    st = con.createStatement();
                    int i = st.executeUpdate("insert into section(cname, sectionid, seats, yocc) values ('" + cname + "','" + sectionid + "','" + seats + "','" + yocc + "')");
                    if (i != 0) {

                        response.sendRedirect("section_insert.jsp?msg=success");
                    } else {
                        response.sendRedirect("section_insert.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }

                break;


            case 6:
                try {
                    con = DbConnection.getConnection();
                    st = con.createStatement();
                    int i = st.executeUpdate("insert into stud(sname, lname, fname, dob, scity, scountry, scode, snumber, jcource, semail) values ('" + sname + "','" + lname + "','" + fname + "','" + dob + "','" + scity + "','" + scountry + "','" + scode + "','" + snumber + "','" + jcource + "','" + semail + "')");
                    if (i != 0) {

                        response.sendRedirect("olreg.jsp?msg=success");
                    } else {
                        response.sendRedirect("olreg.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;

            case 7:
                try {
                    if (name.equalsIgnoreCase("Admin") && pass.equalsIgnoreCase("Admin")) {
                        response.sendRedirect("admin_home.jsp?msg=success");
                    } else {
                        response.sendRedirect("Admin.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;
            case 8:
                try {
                    con = DbConnection.getConnection();
                    st = con.createStatement();
                    int i = st.executeUpdate("insert into timetable(depart1, section1, day, ihours, iihours, iiihours, ivhours, vhours, vihours, viihours) values ('" + depart1 + "','" + section1 + "','" + day + "','" + IHours + "','" + IIHours + "','" + IIIHours + "','" + IVHours + "','" + VHours + "','" + VIHours + "','" + VIIHours + "')");
                    if (i != 0) {
                        response.sendRedirect("time_insert.jsp?msg=success");
                    } else {
                        response.sendRedirect("time_insert.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;
            case 9:
                try {
                    con = DbConnection.getConnection();
                    st = con.createStatement();
                    int i = st.executeUpdate("insert into attendance(sdepart, ssection, stud_id, sstatus, sdate) values ('" + sdepart + "','" + ssection + "','" + stud_id + "','" + sstatus + "','" + sdate + "')");
                    if (i != 0) {
                        response.sendRedirect("att_insert.jsp?msg=success");
                    } else {
                        response.sendRedirect("att_insert.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;
         

            default:
                response.sendRedirect("index.html");
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }

%>