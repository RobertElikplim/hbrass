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
        <th>Tire Vendor ID</th>
        <th>Vendor ID</th>
    </tr>
    <c:forEach var = "Tire_Vendor" items = "${tireVendorList}">
        <tr>
            <td>${Tire_Vendor.getTire_Vendor_ID()}</td>
            <td>${Tire_Vendor.getVendor_ID()}</td>
            <td><a href="/editTruck_Log/${Tire_Vendor.getTire_Vendor_ID()}">Edit</a></td>
            <td><a href="/deleteTruck_Log/${Tire_Vendor.getTire_Vendor_ID()}">Delete</a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>