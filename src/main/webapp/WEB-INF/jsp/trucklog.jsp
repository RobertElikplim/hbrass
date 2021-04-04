<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hbrass</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>

<table class="w3-table-all">

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
            <td><a href="/editTruck_Log/${Truck_Log.getLogID()}">Edit</a></td>
            <td><a href="/deleteTruck_Log/${Truck_Log.getLogID()}">Delete</a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>