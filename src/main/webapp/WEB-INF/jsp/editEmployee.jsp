<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hbrass</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
<form method="post" action="/addEmployee">
    <td><input type="hidden" name="empID" value="${employee.getEmployee_ID()}"></td>
    <table class="w3-table-all">
        <tr>
            <td>First Name</td>
            <td>Last Name</td>
            <td>Phone Number</td>
            <td>Email</td>
            <td>Street Address</td>
        </tr>
        <tr>
            <td><input type="text" name="fName" value ="${employee.getFirst_Name()}"></td>
            <td><input type="text" name="lName" value ="${employee.getLast_Name()}"></td>
            <td><input type="text" name="pNumber" value ="${employee.getPhone_Number()}"></td>
            <td><input type="text" name="eMail" value ="${employee.getEmail()}"></td>
            <td><input type="text" name="sAddy" value ="${employee.getStreet_Address()}"></td>
        </tr>
        <tr>
            <td>City</td>
            <td>State Code</td>
            <td>Zip Code</td>
            <td>Position ID</td>
            <td>Driver ID</td>
            <td>Emergency Contact ID</td>
        </tr>
        <tr>
            <td><input type="text" name="city" value ="${employee.getCity()}"></td>
            <td><input type="text" name="sCode" value ="${employee.getState_Code()}"></td>
            <td><input type="text" name="zCode" value ="${employee.getZip_Code()}"></td>
            <td><input type="text" name="posID" value ="${employee.getPosition_ID()}"></td>
            <td><input type="text" name="driverID" value ="${employee.getDriver_ID()}"></td>
            <td><input type="text" name="eCon" value ="${employee.getEmergency_Contact_ID()}"></td>
        </tr>
        <br>
    </table>
    <input type="submit" value="Submit Changes">
    <br>
</form>
</body>
</html>