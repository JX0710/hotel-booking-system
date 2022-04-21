<%-- 
    Document   : new_admin
    Created on : Nov 21, 2019, 6:18:47 PM
    Author     : Ooi Jing Xian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style/design.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sunset Hotel</title>
        <script>
            function validateform(){
                var a=document.forms["newadmin"]["email"].value;
                var b=document.forms["newadmin"]["password"].value;
               
                
                if(a ==""){
                    window.alert("Please insert email!");
                    return false;
                }
                else if (b ==""){
                    window.alert("Please insert password!");
                    return false;
                }
                
         }
        </script>
    </head>
    <body><center><img src="logo.png" ></center>
               <ul>
                <li><a href="new_admin.jsp">Add New Admin</a></li>
                <li><a href="add_room.jsp">Add New Room</a></li>
                <li><a href="update_room.jsp">Update Room</a></li>
                <li style="float:right"><a href="admin_logout.jsp">Logout</a></li>
                </ul>
        <h1>New Admins Details</h1>
        <form name="newadmin" action="new_admin2.jsp" onsubmit="return validateform()">
            <table border="0">
                <tbody>
                    <tr><td>Email:<input type="email" name="email" value="" />
                        </td></tr>
                    <tr><td>Password:<input type="password" name="password" value="" />
                        </td></tr>
                    <tr><td><input type="submit" value="Submit" />
                        </td></tr>
                </tbody>
            </table>

        </form>
        
    </body>
</html>
