<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hbrass</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <style><%@include file="../css/style.css"%></style>
</head>
<body>
<form class="fmm" action="/back">
    <input type="submit" class="log" value="Logout">
</form>

<form class="tbm" method="post" action="/tables">
    <input type="submit" value="Table Management">
</form>

<table class="w3-table-all">
    <tr>
        <th>Incident Status ID</th>
        <th>Incident Status</th>
    </tr>
    <c:forEach var = "incidentStatus" items = "${incidentStatusList}">
        <tr>
            <td>${incidentStatus.getIncident_Status_ID()}</td>
            <td>${incidentStatus.getIncident_Status()}</td>
            <td><a href="/editIncident/${incidentStatus.getIncident_Status_ID()}"><img src="../../img/edit.jpg" alt="edit_image" ></a></td>
            <td><a href="/deleteIncident/${incidentStatus.getIncident_Status_ID()}"><img src="../../img/delete.jpg" alt="delete_image" ></a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>