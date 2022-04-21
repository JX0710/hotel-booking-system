    <%-- 
    Document   : update_room2
    Created on : Nov 24, 2019, 10:17:51 PM
    Author     : Ooi Jing Xian
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
        <%
            String RoomNo = request.getParameter("RoomNo");
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
        <%
            try{
            connection = DriverManager.getConnection(connectionUrl+database, userid, password);
            statement=connection.createStatement();
            String sql ="select * from room where RoomNo="+RoomNo;
            resultSet = statement.executeQuery(sql);
            while(resultSet.next()){
        %>

        <!DOCTYPE html>
            <html>
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
            <form method="post" action="update_room3.jsp">
            <input type="hidden" name="RoomNo" value="<%=resultSet.getString("RoomNo") %>">
            <tr><td>Room Number:<%=resultSet.getString("RoomNo") %></td></tr>
            <br>
            <tr><td>Room Price:
                    <input type="text" name="room_price" value="<%=resultSet.getString("RoomPrice") %>"></td></tr>
            <br>
            <tr><td>Room Type:
            <select name="room_type">
                <option>Standard Room</option>
                <option>Deluxe Room</option>
            </select></td></tr> 
            <br>
            <tr><td>Capacity:
                    <input type="text" name="capacity" value="<%=resultSet.getString("Capacity") %>"></td></tr>
            
            <br><br>
            <tr><td><input type="submit" value="Submit"></td></tr>
            </form>
            <%
            }
            connection.close();
            } catch (Exception e) {
            e.printStackTrace();
            }
            %>
                </table></body>
            </html>
