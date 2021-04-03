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
        <th>Driver ID</th>
        <th>License Type</th>
        <th>State Code</th>
    </tr>
    <c:forEach var = "Truck_Driver" items = "${truckdriverList}">
        <tr>
            <td>${Truck_Driver.getDriver_ID()}</td>
            <td>${Truck_Driver.getLicense_Type()}</td>
            <td>${Truck_Driver.getState_Code()}</td>
            <td><a href="/editTruck_Log/${Truck_Driver.getDriver_ID()}">Edit</a></td>
            <td><a href="/deleteTruck_Log/${Truck_Driver.getDriver_ID()}">Delete</a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>