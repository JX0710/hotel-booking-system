<%-- 
    Document   : logout
    Created on : Nov 21, 2019, 8:43:07 PM
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
<body>  <center><img src="logo.png" ></center>
        <% session.invalidate(); %>
<table><tr><td>You have been successfully logout</td></tr></table>
</body>
</html>