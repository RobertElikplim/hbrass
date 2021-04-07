<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hbrass</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"></head>
<body>
<form method="post" action="/tables">
    <input type="submit" value="Table Management">
</form>
<form>

</form>
<table class="w3-table-all">
    <tr>
        <th>Maintenance ID</th>
        <th>Mileage</th>
        <th>Service Date</th>
        <th>Type of Service</th>
        <th>Service Fee</th>
        <th>Vin</th>
    </tr>
    <c:forEach var = "Maintenance" items = "${maintenanceList}">
        <tr>
            <td>${Maintenance.getMaintenanceID()}</td>
            <td>${Maintenance.getMileage()}</td>
            <td>${Maintenance.getServiceDate()}</td>
            <td>${Maintenance.getService()}</td>
            <td>${Maintenance.getServiceFee()}</td>
            <td>${Maintenance.getTruckIDVIN()}</td>
            <td><a href="/editMaintenance/${Maintenance.getMaintenanceID()}"><img src="../../img/edit.jpg" alt="edit_image" ></a></td>
            <td><a href="/deleteMaintenance/${Maintenance.getMaintenanceID()}"><img src="../../img/delete.jpg" alt="delete_image" ></a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>