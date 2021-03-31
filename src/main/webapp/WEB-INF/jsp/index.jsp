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
        <th>Country</th>
        <th>Date</th>
    </tr>
    <tr>
        <c:forEach var = "employee" items = "${employeeList}">

        <td>${employee.getFirst_Name()}</td>
        <td>${employee.getLast_Name()}</td>

    </tr>
    </c:forEach>
</table>
</body>
</html>
