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
        <th>Employee ID</th>
        <th>Employee Status</th>
    </tr>
    <c:forEach var = "Employee_Status" items = "${employeeStatusList}">
        <tr>
            <td>${Employee_Status.getEmployee_ID()}</td>
            <td>${Employee_Status.getEmployee_Status()}</td>
            <td><a href="/editEmployee_Status/${Employee_Status.getEmployee_ID()}">Edit</a></td>
            <td><a href="/deleteEmployee_Status/${Employee_Status.getEmployee_ID()}">Delete</a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>