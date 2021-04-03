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
    <c:forEach var = "Tire" items = "${tireList}">
        <tr>
            <td>${Tire.getTire_ID()}</td>
            <td>${Tire.getTire_Name()}</td>
            <td><a href="/editTire/${Tire.getTire_ID()}">Edit</a></td>
            <td><a href="/deleteTire/${Tire.getTire_Name()}">Delete</a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>