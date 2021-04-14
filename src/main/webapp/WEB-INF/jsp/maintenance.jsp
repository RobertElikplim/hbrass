<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hbrass</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style><%@include file="../css/style.css"%></style>
</head>
<body>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <h1 class="navbar-brand">In Big Wheels</h1>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="/">Logout</a></li>
            <li><a href="/tables">Table Management</a></li>
        </ul>
    </div>
</nav>
<div class="container-fluid">
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

<table class="table table-bordered">
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
</div>
</body>
</html>