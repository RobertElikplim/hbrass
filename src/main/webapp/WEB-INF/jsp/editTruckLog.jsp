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
        <a class="navbar-brand">Truck Log Edit</a>
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
    <form action="/submitTruckLog" method="post">
        <input type="hidden" name="logID" value="${Truck_Log.getLogID()}">
        <table class="table table-bordered">
            <tr>
                <td>Log ID</td>
                <td>VIN</td>
                <td>Driver ID</td>
                <td>US DOT ID</td>
                <td>Fuel Level</td>
            </tr>
            <tr>
                <td><input class="form-control" type="text" value="${Truck_Log.getLogID()}" disabled></td>
                <td><select class="form-select" name="truckVIN">
                    <c:forEach var = "Truck" items = "${truckList}">
                        <option value="${Truck.getTruck_ID_VIN()}">${Truck.getTruck_ID_VIN()}</option>
                    </c:forEach>
                </select></td>
                <td>    <select class="form-select" name="driverID">
                    <c:forEach var = "Truck_Driver" items = "${driverList}">
                        <option value="${Truck_Driver.getDriver_ID()}">${Truck_Driver.getDriver_ID()}</option>
                    </c:forEach>
                </select></td>
                <td> <select class="form-select" name="usDotID">
                    <c:forEach var = "Dot_Inspection" items = "${dotList}">
                        <option value="${Dot_Inspection.getDot_Inspection_ID()}">${Dot_Inspection.getDot_Inspection_ID()}</option>
                    </c:forEach>
                </select></td>
                <td><select class="form-select" type="text" name="fLevel">
                    <selected value="${Truck_Log.getFuelLevel()}">${Truck_Log.getFuelLevel()}</selected>
                    <option value="Full">Full</option>
                    <option value="3/4">3/4</option>
                    <option value="1/2">1/2</option>
                    <option value="1/4">1/4</option>
                </select></td>
            </tr>
        </table>
        <input class="btn btn-primary" type="submit" value="Submit Changes">

    </form>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
</body>
</html>