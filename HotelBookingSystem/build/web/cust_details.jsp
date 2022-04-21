<%-- 
    Document   : book
    Created on : Nov 11, 2019, 9:35:44 AM
    Author     : Ooi Jing Xian
--%>



<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <script>
            function validateform(){
                var a=document.forms["book"]["name"].value;
                var b=document.forms["book"]["ICNo"].value;
                var c=document.forms["book"]["phno"].value;
                var d=document.forms["book"]["email"].value;
                
                
                if(a ==""){
                    window.alert("Please insert name!");
                    return false;
                }
                else if (b ==""){
                    window.alert("Please insert identification number!");
                    return false;
                }
                else if (c ==""){
                    window.alert("Please insert phone number!");
                    return false;
                }
                else if (d ==""){
                    window.alert("Please insert email!");
                    return false;
                }
            }
        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style/details.css">
        <title>Sunset Hotel</title>
    </head>
    <body>
    <center><img src="logo.png"></center>
    
        <h1>Book Now!</h1>
        <h4>Please fill the following details to complete your booking:</h4>
        <form name="book" action="cust_details2.jsp" method="POST" onsubmit="return validateform()">
            <table border="0">
            <tbody>
                <tr><td>Name:
                        <input type="text" name="Name" value="" /></td></tr>
                <tr><td>Identification Number:
                        <input type="text" name="ICNo" value="" /></td></tr>
                <tr><td>Phone Number:
                        <input type="text" name="Phone" value="" /></td></tr>
                <tr><td>Email:
                        <input type="text" name="Email" value="" /></td></tr>
                
                
                <tr><td><input type="submit" value="Book" name="book" />
                        <input type="reset" value="Cancel" name="cancel"/></td></tr>
            </tbody>
            </table>

        </form>
    </body>
</html>