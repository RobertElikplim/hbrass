<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hbrass</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body style="text-align: center;">
<form method="post" action="/submitDriverTruck">
    <td><input type="hidden" name="truckDriverID" value="${Truck_Driver.getTruck_Driver_ID()}"></td>
    <table class="w3-table-all">
        <tr>
            <td>Driver ID</td>
            <td>License Type</td>
            <td>State Code</td>
        </tr>
        <tr>
            <td><input type="text" name="driverID" value ="${Truck_Driver.getDriver_ID()}"></td>
            <td><input type="text" name="driverLicenseType" value ="${Truck_Driver.getLicense_Type()}"></td>
            <td><input type="text" name="driverStateCode" value ="${Truck_Driver.getState_Code()}"></td>
        </tr>
        <br>
    </table>
    <input type="submit" value="Submit Changes">
    <br>
</form>
</body>
</html>