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
        <th>Incident Type ID</th>
        <th>Type of Incident</th>
    </tr>
    <c:forEach var = "incidentType" items = "${incidentTypeList}">
        <tr>
            <td>${incidentType.getIncident_Type_ID()}</td>
            <td>${incidentType.getType_of_Incident()}</td>
            <td><a href="/editIncident/${incidentType.getIncident_Type_ID()}"><img src="../../img/edit.jpg" alt="edit_image" ></a></td>
            <td><a href="/deleteIncident/${incidentType.getIncident_Type_ID()}"><img src="../../img/delete.jpg" alt="delete_image" ></a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>