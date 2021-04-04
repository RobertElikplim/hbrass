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
            <td><a href="/editTruck/${Truck.getTruck_ID_VIN()}">Edit</a></td>
            <td><a href="/deleteTruck/${Truck.getTruck_ID_VIN()}">Delete</a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>