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
        <th>Driver ID</th>
        <th>License Type</th>
        <th>State Code</th>
    </tr>
    <c:forEach var = "Truck_Driver" items = "${truckdriverList}">
        <tr>
            <td>${Truck_Driver.getDriver_ID()}</td>
            <td>${Truck_Driver.getLicense_Type()}</td>
            <td>${Truck_Driver.getState_Code()}</td>
            <td><a href="/editTruck_Driver/${Truck_Driver.getDriver_ID()}"><img src="../../img/edit.jpg" alt="edit_image" ></a></td>
            <td><a href="/deleteTruck_Driver/${Truck_Driver.getDriver_ID()}"><img src="../../img/delete.jpg" alt="delete_image" ></a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>