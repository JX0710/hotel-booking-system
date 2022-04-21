<%-- 
    Document   : details
    Created on : Dec 5, 2019, 6:20:44 PM
    Author     : Ooi Jing Xian
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String Name=request.getParameter("Name"); session.setAttribute("Name",Name);
String ICNo=request.getParameter("ICNo");
String Phone=request.getParameter("Phone");
String Email=request.getParameter("Email");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hoteldb", "root", "");
Statement st=conn.createStatement();
int i=st.executeUpdate("insert into customers(Name,ICNo,Phone,Email)values('"+Name+"','"+ICNo+"', ' "+Phone+"', ' "+Email+"')");
out.println("Data is successfully inserted!");
response.sendRedirect("end.jsp"); 
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
