<%-- 
    Document   : new_room2
    Created on : Nov 24, 2019, 9:26:44 PM
    Author     : Ooi Jing Xian
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<head><link rel="stylesheet" type="text/css" href="style/design.css">
 <title>Sunset Hotel</title></head>

    <body><table>
        <%
        String room_price=request.getParameter("room_price");
        String room_type=request.getParameter("room_type");
        String capacity=request.getParameter("capacity");

        try
        {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hoteldb", "root", "");
        Statement st=conn.createStatement();
        int i=st.executeUpdate("insert into room(RoomPrice,RoomType,Capacity)values('"+room_price+"','"+room_type+"','"+capacity+"')");%>
        <tr><td><%out.println("Data is successfully inserted!");%></tr></td>
        <%}
        catch(Exception e)
        {
        System.out.print(e);
        e.printStackTrace();
        }
        %>
    </table></body>

