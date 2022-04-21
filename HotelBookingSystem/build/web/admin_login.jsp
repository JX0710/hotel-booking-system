<%-- 
    Document   : login
    Created on : Nov 21, 2019, 6:09:07 PM
    Author     : Ooi Jing Xian
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %> 
<!DOCTYPE html>
<html>
<head>
       <link rel="stylesheet" type="text/css" href="style/design.css">
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sunset Hotel</title></head>

<body><center><img src="logo.png" ></center>
               <ul>
                <li><a href="new_admin.jsp">Add New Admin</a></li>
                <li><a href="add_room.jsp">Add New Room</a></li>
                <li><a href="update_room.jsp">Update Room</a></li>
                </ul>
        <%! String userdbEmail;
            String userdbPsw;
        %>
        <%
            Connection con= null;
            PreparedStatement ps = null;
            ResultSet rs = null;

            String driverName = "com.mysql.jdbc.Driver";
            String url = "jdbc:mysql://localhost:3306/hoteldb";
            String user = "root";
            String dbpsw = "";

            String sql = "select * from admins where email=? and password=? ";

            String email = request.getParameter("email");
            String password = request.getParameter("password");


            if((!(email.equals(null) || email.equals("")) && !(password.equals(null) || password.equals(""))) )
            {
            try{
            Class.forName(driverName);
            con = DriverManager.getConnection(url, user, dbpsw);
            ps = con.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, password);

            rs = ps.executeQuery();
            if(rs.next())
            { 
            userdbEmail = rs.getString("email");
            userdbPsw = rs.getString("password");

            if(email.equals(userdbEmail) && password.equals(userdbPsw) )
            {
            session.setAttribute("name",userdbEmail);

            response.sendRedirect("admin_welcome.jsp"); 
            } 
            }
            else
            response.sendRedirect("admin_error.jsp");
            rs.close();
            ps.close(); 
            }
            catch(SQLException sqe)
            {
            out.println(sqe);
            } 
            }
            else
            {
        %>
        <center><p style="color:red">Error In Login</p></center>
        <% 
        getServletContext().getRequestDispatcher("/login_admin.jsp").include(request, response);
        }
        %>
</body>
</html>