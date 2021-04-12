<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hbrass</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <style><%@include file="../css/style.css"%></style>
</head>
<body style="text-align: center;">
<form class="fmm" action="/back">
    <input type="submit" class="log" value="Logout">
</form>

<form class="tbm" method="post" action="/tables">
    <input type="submit" value="Table Management">
</form>

<table class="w3-table-all">
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

</body>
</html>