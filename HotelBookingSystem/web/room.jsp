<%-- 
    Document   : room
    Created on : Nov 10, 2019, 9:33:25 PM
    Author     : Ooi Jing Xian
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
         <link rel="stylesheet" type="text/css" href="style/room.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sunset Hotel</title>
    </head>
    <body>
        
        <h1>Room Type</h1>
        <form name="room" action="room2.jsp" method="POST">
        <table border="2" cellspacing="">
        <tbody>
            <tr><td><h2>Standard Room</h2>
                    <img src="standard.jpg"></td>
                <td><p>Room properties:
                <br>-Room size is 20 m² (approx)
                <br>-2 single bed or 1 double bed
                <br>-Bathroom with water heater
                <br>-Air-conditioner and ceiling fan
                <br>-LCD TV with Satellite Channel
                <br>-Safety Box
                <br>-Hair & Body Shampoo
                <br>-Wardrobe
                <br>-Mini Fridge
                <br><b>RM150 per night 
                <br><br><input type="submit" value="Book" name="Book" />
                </p></td></tr>
            <tr><td><h2>Deluxe Room</h2>
                    <img src="deluxe.jpg"></td>
                <td><p>Room properties:
                <br>-Room size is 36 x 12 ft (approx)
                <br>-1 King Size Bed
                <br>-1 Sofa Chair
                <br>-Bathroom With Water Heater
                <br>-Air-conditioner and ceiling Fan
                <br>-LCD TV with Satellite Channel
                <br>-Hair & Body Shampoo
                <br>-Wardrobe
                <br>-Mini Fridge
                <br>-Private Balcony
                <br><b>RM350 per night
                <br><br><input type="submit" value="Book" name="Book" />
                </p></td></tr>
            
                
              <%String dateIn=request.getParameter("date_in");
              session.setAttribute("datein",dateIn);
              String dateOut=request.getParameter("date_out");
              session.setAttribute("dateout",dateOut);%>
            
                       
                </tbody>
            </table>

        </form>
    </body>
</html>
