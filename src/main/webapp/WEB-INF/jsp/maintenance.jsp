<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hbrass</title>
    <style><%@include file="../css/style.css"%></style>
</head>
<body>

<table>
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
            <td><a href="/editMaintenance/${Maintenance.getMaintenanceID()}">Edit</a></td>
            <td><a href="/deleteMaintenance/${Maintenance.getMaintenanceID()}">Delete</a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>