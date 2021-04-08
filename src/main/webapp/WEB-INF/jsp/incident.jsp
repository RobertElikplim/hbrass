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

<form method="post" action="/submitIncident">
    <h3>Fields with * are required</h3>
    <input type="hidden" name="incidentID">
    <input type="hidden" name="incidentStatusID">
    <input type="hidden" name="incidentTypeID">
    <table>
        <tr>
            <td>Load ID</td>
            <td>Employee ID</td>
            <td>Remarks</td>
        </tr>
        <tr>
            <td><input type="text" name="loadID" placeholder="*"></td>
            <td><input type="text" name="employeeID" placeholder="*"></td>
            <td><input type="text" name="remarks"></td>
        </tr>
    </table>
    <input type="submit" value="Add Entry">
    <br>
    <br>
</form>
<table class="w3-table-all">
    <tr>
        <th>Incident ID</th>
        <th>Load ID</th>
        <th>Employee ID</th>
        <th>Incident Status ID</th>
        <th>Incident Type ID</th>
        <th>Remarks</th>
    </tr>
    <c:forEach var = "Incident" items = "${incidentList}">
        <tr>
            <td>${Incident.getIncident_ID()}</td>
            <td>${Incident.getLoad_ID()}</td>
            <td>${Incident.getEmployee_ID()}</td>
            <td>${Incident.getIncident_Status_ID()}</td>
            <td>${Incident.getIncident_Type_ID()}</td>
            <td>${Incident.getRemarks()}</td>
            <td><a href="/editIncident/${Incident.getIncident_ID()}"><img src="../../img/edit.jpg" alt="edit_image" ></a></td>
            <td><a href="/deleteIncident/${Incident.getIncident_ID()}"><img src="../../img/delete.jpg" alt="delete_image" ></a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>