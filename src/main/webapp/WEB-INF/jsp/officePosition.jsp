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
        <th>Position ID</th>
        <th>Employee Position</th>
    </tr>
    <c:forEach var = "Office_Position" items = "${officePositionList}">
        <tr>
            <td>${Office_Position.getPosition_ID()}</td>
            <td>${Office_Position.getEmployee_Position()}</td>
            <td><a href="/editOffice_Position/${Office_Position.getPosition_ID()}">Edit</a></td>
            <td><a href="/deleteOffice_Position/${Office_Position.getPosition_ID()}">Delete</a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>