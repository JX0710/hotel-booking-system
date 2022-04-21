<%-- 
    Document   : room2
    Created on : Dec 5, 2019, 9:37:54 AM
    Author     : Ooi Jing Xian
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
        <%
            String driver = "com.mysql.jdbc.Driver";
            String connectionUrl = "jdbc:mysql://localhost:3306/";
            String database = "hoteldb";
            String userid = "root";
            String password = "";
            try {
            Class.forName(driver);
            } catch (ClassNotFoundException e) {
            e.printStackTrace();
            }
            Connection connection = null;
            Statement statement = null;
            ResultSet resultSet = null;
        %>
        
        <html>
        <head> <link rel="stylesheet" type="text/css" href="style/design.css">
               <title>Sunset Hotel</title>
        </head>
        <body>
            <table border="1" style="margin-top: 5%;border-collapse:collapse">
        <tr>
        <td>Room Number</td>
        <td>Room Price</td>
        <td>Room Type</td>
        <td>Room Capacity</td>
        </tr>
            <%
                try{
                connection = DriverManager.getConnection(connectionUrl+database, userid, password);
                statement=connection.createStatement();
                String sql ="select * from room ";
                resultSet = statement.executeQuery(sql);
                while(resultSet.next()){
            %>
        <tr>
        <td><%=resultSet.getString("RoomNo") %></td>
        <td><%=resultSet.getString("RoomPrice") %></td>
        <td><%=resultSet.getString("RoomType") %></td>
        <td><%=resultSet.getString("Capacity")%></td>
        <td><a href="cust_details.jsp">Book</a></td>
        </tr>
            <%
                
                session.setAttribute("RoomNo",resultSet.getString("RoomNo"));
                }
                connection.close();
                } catch (Exception e) {
                e.printStackTrace();
                }
              
              
            %>
            
           
              
        </table>
        </body>
        </html>
