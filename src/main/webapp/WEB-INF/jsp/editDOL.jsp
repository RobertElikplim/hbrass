<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hbrass</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body style="text-align: center;">
<form method="post" action="/submitDOL">
    <td><input type="hidden" name="dropOffID" value="${Drop_Off_Location.getDrop_Off_ID()}"></td>
    <table class="w3-table-all">
        <tr>
            <td>Drop Off Tracker Code</td>
            <td>Drop Off Date</td>
            <td>Street Address</td>
            <td>City</td>
            <td>State Code</td>
            <td>Zip Code</td>
        </tr>
        <tr>
            <td><input type="text" name="tCode" value ="${Drop_Off_Location.getDrop_Off_Tracker_Code()}"></td>
            <td><input type="date" name="dDate" value ="${Drop_Off_Location.getDrop_Off_Date()}"></td>
            <td><input type="text" name="sAddy" value ="${Drop_Off_Location.getStreet_Address()}"></td>
            <td><input type="text" name="dCity" value ="${Drop_Off_Location.getCity()}"></td>
            <td><input type="text" name="sCode" value ="${Drop_Off_Location.getState_Code()}"></td>
            <td><input type="text" name="zCode" value ="${Drop_Off_Location.getZip_Code()}"></td>
        </tr>
        <br>
    </table>
    <input type="submit" value="Submit Changes">
    <br>
</form>
</body>
</html>