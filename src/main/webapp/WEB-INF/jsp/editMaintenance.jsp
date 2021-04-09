<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hbrass</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body style="text-align: center;">
<form method="post" action="/submitMaintenance">
    <td><input type="hidden" name="MaintenanceID" value="${Maintenance.getMaintenanceID()}"></td>
    <table class="w3-table-all">
        <tr>
            <td>Mileage</td>
            <td>ServiceDate</td>
            <td>Service</td>
            <td>ServiceFee</td>
            <td>VIN</td>
        </tr>

        <tr>
            <td><input type="text" name="Mileage" value="${Maintenance.getMileage()}"></td>
            <td><input type="date" name="ServiceDate" value ="${Maintenance.getServiceDate()}"></td>
            <td><input type="text" name="Service" value ="${Maintenance.getService()}"></td>
            <td><input type="text" name="ServiceFee" value ="${Maintenance.getServiceFee()}"></td>
            <td><input type="text" name="TruckIdVin" value ="${Maintenance.getTruckIDVIN()}"></td>

        </tr>
        <br>
    </table>
    <input type="submit" value="Submit Changes">
    <br>
</form>
</form>

</body>
</html>