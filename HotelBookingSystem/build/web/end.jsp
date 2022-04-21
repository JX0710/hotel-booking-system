<%-- 
    Document   : payment
    Created on : Dec 9, 2019, 10:14:30 PM
    Author     : Ooi Jing Xian
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<head><link rel="stylesheet" type="text/css" href="style/design.css">
        <title>Sunset Hotel</title></head>
<body><center><img src="logo.png"></center>
    <table>
<%

String datein=(String)session.getAttribute("datein");
String dateout=(String)session.getAttribute("dateout");
String Name=(String)session.getAttribute("Name");
String RoomNo=(String)session.getAttribute("RoomNo");
int RoomNumber=Integer.parseInt(RoomNo);
int temp_id=0;
            
String sql="select CustomerID from customers where Name=?";

            Connection con = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
        
try{
   Class.forName("com.mysql.jdbc.Driver");
        try{
                    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hoteldb","root","");
                    ps=con.prepareStatement(sql);
                    ps.setString(1,Name);
                    rs=ps.executeQuery();
                    
                    if(rs.next()){
                         temp_id=rs.getInt("CustomerID");
                         
                    }
                    
                    ps.close();
                    
                    sql="insert into book(CustomerId,RoomNo,DateIn,DateOut)values(?,?,?,?)";
                    ps=con.prepareStatement(sql);
                    ps.setInt(1, temp_id);
                    ps.setInt(2,RoomNumber);
                    ps.setDate(3,java.sql.Date.valueOf(datein));
                    ps.setDate(4,java.sql.Date.valueOf(dateout));
                    
                    int j=ps.executeUpdate();%>
                    <tr><td><%out.println("Your booking is success!");%></td></tr>
                    <%rs.close();
                    ps.close();
                    con.close();
                    
                    
                    
                    
        }catch(SQLException e_sql){
            e_sql.printStackTrace();
        
        }

}catch(ClassNotFoundException e){
e.printStackTrace();
}
%>
    </table></body>