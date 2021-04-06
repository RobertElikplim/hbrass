<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hbrass</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"></head>
<body>
<form method="post" action="/tables">
    <input type="submit" value="Table Management">
</form>

<table class="w3-table-all">
    <tr>
        <th>Tire Vendor ID</th>
        <th>Vendor ID</th>
    </tr>
    <c:forEach var = "Tire_Vendor" items = "${tireVendorList}">
        <tr>
            <td>${Tire_Vendor.getTire_Vendor_ID()}</td>
            <td>${Tire_Vendor.getVendor_ID()}</td>
            <td><a href="/editTire_Vendor/${Tire_Vendor.getTire_Vendor_ID()}"><img src="../../img/edit.jpg" alt="edit_image" ></a></td>
            <td><a href="/deleteTire_Vendor/${Tire_Vendor.getTire_Vendor_ID()}"><img src="../../img/delete.jpg" alt="delete_image" ></a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>