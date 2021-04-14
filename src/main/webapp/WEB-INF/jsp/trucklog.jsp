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
<table class="table table-bordered">

    <tr>
        <th>Log ID</th>
        <th>VIN</th>
        <th>Driver ID</th>
        <th>Us Dot ID</th>
        <th>Fuel Level</th>
    </tr>
    <c:forEach var = "Truck_Log" items = "${trucklogList}">
        <tr>
            <td>${Truck_Log.getLogID()}</td>
            <td>${Truck_Log.getTruckIDVIN()}</td>
            <td>${Truck_Log.getDriverID()}</td>
            <td>${Truck_Log.getUsDotID()}</td>
            <td>${Truck_Log.getFuelLevel()}</td>
            <td><a href="/editTruck_Log/${Truck_Log.getLogID()}"><img src="../../img/edit.jpg" alt="edit_image" ></a></td>
            <td><a href="/deleteTruck_Log/${Truck_Log.getLogID()}"><img src="../../img/delete.jpg" alt="delete_image" ></a></td>
        </tr>
    </c:forEach>
</table>
</div>
</body>
</html>