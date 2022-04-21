<%-- 
    Document   : welcome
    Created on : Nov 21, 2019, 6:10:02 PM
    Author     : Ooi Jing Xian
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="style/design.css">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<head><title>Sunset Hotel</title></head>
</head>
<body><center><img src="logo.png" ></center>
               <ul>
                <li><a href="new_admin.jsp">Add New Admin</a></li>
                <li><a href="add_room.jsp">Add New Room</a></li>
                <li><a href="update_room.jsp">Update Room</a></li>
                </ul>
<table><tr><td>Welcome, <%=session.getAttribute("name")%></tr></td>
<tr><td><a href="admin_logout.jsp">Logout</a></table></tr></td>
</body>
</html>