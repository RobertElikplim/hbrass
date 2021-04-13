<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hbrass</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style><%@include file="../css/style.css"%></style>
</head>
<body>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <h1 class="navbar-brand">In Big Wheels</h1>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="/">Logout</a></li>
            <li><a href="/tables">Table Management</a></li>
        </ul>
    </div>
</nav>
<div class="container-fluid">
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
<table class="table table-bordered">
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
</div>
</body>
</html>