<%-- 
    Document   : error
    Created on : Nov 21, 2019, 8:42:29 PM
    Author     : Ooi Jing Xian
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
    <link rel="stylesheet" type="text/css" href="style/design.css">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<head><title>Sunset Hotel</title></head>
</head>
<body>  
               
        <center><p style="color:red">Sorry, your record is not available.</p></center>
        <%
            getServletContext().getRequestDispatcher("/login_admin.jsp").include(request, response);
        %>
</body>
</html>
