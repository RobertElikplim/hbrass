<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hbrass</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
    <style><%@include file="../css/style.css"%></style>

</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand">Incident Edit</a>
        <div class="navbar-right" id="navbarSupportedContent">
            <ul class="navbar-nav navbar-right">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/tables">Table Management</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/">Logout</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="container-fluid">

    <table class="table table-bordered">
        <tr><form method="post" action="/submitIncident">
        <tr>
            <td>Incident ID</td>
            <td>Incident Type</td>
            <td>Load ID</td>
            <td>Employee ID</td>
            <td>Incident Status</td>
            <td>Remarks</td>
        </tr>
        <td><input class= form-control" type="text" name="incidentID" value="${Incident.getIncident_ID()}"></td>
            <td><input class="form-control" type="text" name ="incidentType" value ="${Incident.getIncident_Type()}"></td>
            <td><select class="form-select" name="loadID">
                <c:forEach var = "Loads" items = "${loadList}">
                    <option value="${Loads.getLoad_ID()}">${Loads.getLoad_ID()}</option>
                </c:forEach>
            </select></td>
            <td><select class="form-select" name="employeeID">
                    <c:forEach var = "employee" items = "${employeeList}">
                        <option value="${employee.getEmployee_ID()}">${employee.getEmployee_ID()}-${employee.getLast_Name()}, ${employee.getFirst_Name()}</option>
                    </c:forEach>
                </select></td>
            <td><input class="form-control" type="text" name="incidentStatus" value ="${Incident.getIncident_Status()}"></td>
            <td><input class="form-control" type="text" name="remarks" value ="${Incident.getRemarks()}"></td>

        </tr>
    </table>
    <input class="btn btn-primary" type="submit" value="Submit Changes">
</form>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>

</body>
</html>