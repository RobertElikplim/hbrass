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
<body style="text-align: center;">
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
        <th>VIN</th>
        <th>Year</th>
        <th>License Type</th>
        <th>Vehicle Tracker</th>
        <th>Maker</th>
        <th>Model</th>
        <th>Policy Number</th>
    </tr>
    <c:forEach var = "Truck" items = "${truckList}">
        <tr>
            <td>${Truck.getTruck_ID_VIN()}</td>
            <td>${Truck.getYear()}</td>
            <td>${Truck.getLicense_Plate()}</td>
            <td>${Truck.getVehicle_Tracker()}</td>
            <td>${Truck.getMake()}</td>
            <td>${Truck.getModel()}</td>
            <td>${Truck.getPolicy_Number()}</td>
            <td><a href="/editTruck/${Truck.getTruck_ID_VIN()}"><img src="../../img/edit.jpg" alt="edit_image" ></a></td>
            <td><a href="/deleteTruck/${Truck.getTruck_ID_VIN()}"><img src="../../img/delete.jpg" alt="delete_image" ></a></td>
        </tr>
    </c:forEach>
</table>
</div>
</body>
</html>