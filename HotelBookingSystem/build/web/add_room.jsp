<%-- 
    Document   : new_room
    Created on : Nov 24, 2019, 9:11:41 PM
    Author     : Ooi Jing Xian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style/design.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script>
            function validateform(){
                var a=document.forms["room"]["room_price"].value;
                var b=document.forms["room"]["room_type"].value;
                var c=document.forms["room"]["capacity"].value;
                
                if(a ==""){
                    window.alert("Please insert room pricel!");
                    return false;
                }
                else if (b ==""){
                    window.alert("Please insert room type!");
                    return false;
                }
                else if (c ==""){
                    window.alert("Please insert room capacity!");
                    return false;
                }
            }
        </script>
        <title>Sunset Hotel</title>
    </head>
    <body><center><img src="logo.png" ></center>
               <ul>
               <li><a href="new_admin.jsp">Add New Admin</a></li>
                <li><a href="add_room.jsp">Add New Room</a></li>
                <li><a href="update_room.jsp">Update Room</a></li>
                <li style="float:right"><a href="admin_logout.jsp">Logout</a></li>
                </ul>
        <form name="room" action="add_room2.jsp" method="POST">
            <table border="0">
               <tbody>
                   <tr><td>Room Price:<input type="text" name="room_price" value="" />
                       </td></tr>
                   <tr><td>Room Type:<select name="room_type">
                               <option>Standard Room</option>
                               <option>Deluxe Room</option>
                           </select>
                       </td></tr>
                   <tr><td>Capacity:<input type="text" name="capacity" value="" /></td></tr>
                   <tr><td><input type="submit" value="Submit" />
                       </td></tr>
                </tbody>
            </table>

        </form>
    </body>
</html>
