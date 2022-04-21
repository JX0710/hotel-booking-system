<%-- 
    Document   : Available
    Created on : Nov 9, 2019, 3:42:39 PM
    Author     : Ooi Jing Xian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style/design.css">
        <script>
            function validateform(){
                var a=document.forms["available"]["guest"].value;
                var b=document.forms["available"]["in"].value;
                var c=document.forms["available"]["out"].value;
                
                if(a ==""){
                    window.alert("Please select number of guest!");
                    return false;
                }
                else if (b ==""){
                    window.alert("Please select check in date!");
                    return false;
                }
                else if (c ==""){
                    window.alert("Please select check out date!");
                    return false;
                }
         }
        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sunset Hotel</title>
    </head>
    <body><li style="float:right"><a href="login_admin.jsp">Admin Login</a></li>
        <center><img src="logo.png"></center>
        <h1>Welcome To Sunset Hotel!</h1>
        <form name="available"  action="room.jsp" method="POST" onsubmit="return validateform()">
            <table border="0">
        <h2>Please fill in the following details:</h2>        
            <tbody>
               
             <tr><td>Guest:
                 <select name="guest">
                      <option>1 person</option>
                      <option>2 person</option>
                      </select></td>  
              </tr>  
            <tr><td>Check in:
                    <input type="date" name="date_in"  ></td>
            </tr>
            <tr><td>Check out:
                <input type="date" name="date_out" ></td>
            </tr>
            <tr><td><input type="submit" value="Check" name="submit" />
                    <input type="reset" value="Cancel" name="reset" />
                </td></tr>
                
            </tbody>  
            </table><
        </form>
    </body>
</html>
