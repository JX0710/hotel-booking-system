<%-- 
    Document   : admin
    Created on : Nov 21, 2019, 5:42:12 PM
    Author     : Ooi Jing Xian
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<head><link rel="stylesheet" type="text/css" href="style/design.css">
        <title>Sunset Hotel</title></head>
    <body><table>
            <center><img src="logo.png" ></center>
               <ul>
                <li><a href="new_admin.jsp">Add New Admin</a></li>
                <li><a href="add_room.jsp">Add New Room</a></li>
                <li><a href="update_room.jsp">Update Room</a></li>
                <li style="float:right"><a href="admin_logout.jsp">Logout</a></li>
                </ul>
            <%
            String email=request.getParameter("email");
            String password=request.getParameter("password");

            try
            {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hoteldb", "root", "");
            Statement st=conn.createStatement();
            int i=st.executeUpdate("insert into admins(email,password)values('"+email+"','"+password+"')");%>
            <tr><td><%out.println("New admin is successfully added!");%></td></tr>
            <%}
            catch(Exception e)
            {
            System.out.print(e);
            e.printStackTrace();
            }
            %>
    </table></body>
