
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

    // Section
    String cname = request.getParameter("cname");
    String sectionid = request.getParameter("sectionid");
    String seats = request.getParameter("seats");
    String yocc = request.getParameter("yocc");
    String secID = (String) session.getAttribute("idddd");
    // Stydent Information
    String sid = request.getParameter("sid");
    String sname = request.getParameter("sname");
    String dob = request.getParameter("dob");
    String email = request.getParameter("email");
    String depart = request.getParameter("depart");
    String section = request.getParameter("section");
    String phone = request.getParameter("phone");
    String street = request.getParameter("street");
    String state = request.getParameter("state");
String secIDDD = (String) session.getAttribute("idddddsd");

//Depart
    String dname = request.getParameter("dname");
    String yoc = request.getParameter("yoc");
    String secIDD = (String) session.getAttribute("idddddd");


    //Staff Update
    String staffid = request.getParameter("staffid");
    String staffname = request.getParameter("staffname");
    String jdate = request.getParameter("jdate");
    String semail = request.getParameter("semail");
    String sphone = request.getParameter("phone");
String secIDDDD = (String) session.getAttribute("idddddstaffd");

    int status = Integer.parseInt(request.getParameter("status"));
    try {
        con = DbConnection.getConnection();
        st = con.createStatement();
        switch (status) {
            case 1:
                try {
                    con = DbConnection.getConnection();
                    st = con.createStatement();
                    int i = st.executeUpdate("update section set cname = '" + cname + "', sectionid = '" + sectionid + "', seats = '" + seats + "', yocc = '" + yocc + "' WHERE id='" + secID + "' ");
                    if (i != 0) {
                        response.sendRedirect("section_view.jsp?msg=Information Changed");
                    } else {
                        response.sendRedirect("section_view.jsp?msgg=Error");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;
            case 2:
                try {
                    con = DbConnection.getConnection();
                    st = con.createStatement();
                    int i = st.executeUpdate("update depart set dname = '" + dname + "', yoc = '" + yoc + "' WHERE id='" + secIDD + "' ");
                    if (i != 0) {
                        response.sendRedirect("depart_view.jsp?msg=Information Changed");
                    } else {
                        response.sendRedirect("depart_view.jsp?msgg=Error");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;
            case 3:
                try {
                    con = DbConnection.getConnection();
                    st = con.createStatement();
                    int i = st.executeUpdate("update stud_info set sid = '" + sid + "', sname = '" + sname + "',dob = '" + dob + "', email = '" + email + "',depart = '" + depart + "', section = '" + section + "',phone = '" + phone + "', street = '" + street + "',state = '" + state + "' WHERE id='" + secIDDD + "' ");
                    if (i != 0) {
                        response.sendRedirect("stud_view.jsp?msg=Information Changed");
                    } else {
                        response.sendRedirect("stud_view.jsp?msgg=Error");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;
                case 4:
                try {
                    con = DbConnection.getConnection();
                    st = con.createStatement();
                    int i = st.executeUpdate("update staff set staffid = '" + staffid + "', staffname = '" + staffname + "',jdate = '" + jdate + "', email = '" + semail + "',phone = '" + sphone + "' WHERE id='" + secIDDDD + "' ");
                    if (i != 0) {
                        response.sendRedirect("staff_view.jsp?msg=Information Changed");
                    } else {
                        response.sendRedirect("staff_view.jsp?msgg=Error");
                    }
                } catch (Exception ex) {
//                    ex.printStackTrace();
                }
                break;

            default:
                response.sendRedirect("index.html");
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }

%>