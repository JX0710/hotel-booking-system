<%-- 
    Document   : update_room3
    Created on : Nov 24, 2019, 10:36:05 PM
    Author     : Ooi Jing Xian
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-
1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<% String driverName = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/hoteldb";
String user = "root";
String psw = "";%>

<head><link rel="stylesheet" type="text/css" href="style/design.css">
        <title>Sunset Hotel</title></head>    
<body><center><img src="logo.png" ></center>
<ul>
               <li><a href="new_admin.jsp">Add New Admin</a></li>
                <li><a href="add_room.jsp">Add New Room</a></li>
                <li><a href="update_room.jsp">Update Room</a></li>
                <li style="float:right"><a href="admin_logout.jsp">Logout</a></li>
                </ul>
<table>

<%
        String RoomNo = request.getParameter("RoomNo");
        String RoomPrice=request.getParameter("room_price");
        String RoomType=request.getParameter("room_type");
        String Capacity=request.getParameter("capacity");
        
        if(RoomNo != null)
       {
        Connection con = null;
        PreparedStatement ps = null;
        int RoomNumber= Integer.parseInt(RoomNo);
        try
       {
        Class.forName(driverName);
        con = DriverManager.getConnection(url,user,psw);
        String sql="Update room set RoomNo=?,RoomPrice=?,RoomType=?, Capacity=? where RoomNo="+RoomNo;
        ps = con.prepareStatement(sql);
        ps.setString(1,RoomNo);
        ps.setString(2, RoomPrice);
        ps.setString(3, RoomType);
        ps.setString(4, Capacity);
       
        int i = ps.executeUpdate();
        if(i > 0)
       {%>
       <tr><td><%out.print("Record Updated Successfully");%></td></tr>
       <%}
        else
       {%>
       <tr><td><%out.print("There is a problem in updating Record.");%></td></tr>
       <%}
       }
        catch(SQLException sql)
       {
        request.setAttribute("error", sql);
        out.println(sql);
       }
       }
     %>
    </table></body>