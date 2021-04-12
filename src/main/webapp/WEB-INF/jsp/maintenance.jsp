<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hbrass</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <style><%@include file="../css/style.css"%></style>
</head>
<body>
<form class="fmm" action="/back">
    <input type="submit" class="log" value="Logout">
</form>

<form class="tbm" method="post" action="/tables">
    <input type="submit" value="Table Management">
</form>



<form method="post" action="/submitMaintenance">
    <h3>Fields with * are required</h3>
    <input type="hidden" name="MantenanceID">

    <table>
        <tr>
            <td>Mileage</td>
            <td>ServiceDate</td>
            <td>Service</td>
            <td>ServiceFee</td>
            <td>VIN</td>
        </tr>
        <tr>
            <td><input type="text" name="Mileage" placeholder="*"> </td>
            <td><input type="date" name="ServiceDate" placeholder="*"></td>
            <td><input type="text" name="Service" placeholder="*"></td>
            <td><input type="text" name="ServiceFee"></td>
            <td><input type="text" name="TruckIdVin"></td>
        </tr>
    </table>
    <input type="submit" value="Add Entry">
    <br>
    <br>
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