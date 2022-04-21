<%-- 
    Document   : index
    Created on : Nov 21, 2019, 8:51:58 PM
    Author     : Ooi Jing Xian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><link rel="stylesheet" type="text/css" href="style/design.css">
        <script>
            function validateform(){
                var a=document.forms["admin"]["email"].value;
                var b=document.forms["admin"]["password"].value;
                
                if(a ==""){
                    window.alert("Please insert your email!");
                    return false;
                }
                else if (b ==""){
                    window.alert("Please insert your password!");
                    return false;
                }
            }
        </script>
        
        <title>Sunset Hotel</title></head>
    <body><center><img src="logo.png" ></center>
               

        <form name="admin" action="admin_login.jsp" method="POST">
            <table border="0">
                <tbody>
                    <tr><td>Email:<input type="email" name="email" value="" />
                        </td></tr>
                    <tr><td>Password:<input type="password" name="password" value="" />
                        </td></tr>
                    <tr><td><input type="submit" value="Log In" />
                        </td></tr>
                </tbody>
            </table>

        </form>
    </body>
</html>
