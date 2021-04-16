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
        <a class="navbar-brand">In Big Wheels</a>
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
    <div class="button-row">
        <!-- Trigger the modal with a button -->
        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#myModal">Add New Record</button>
    </div>
    <table class="table table-bordered">

    <tr>
        <th>Log ID</th>
        <th>VIN</th>
        <th>Driver ID</th>
        <th>Us Dot ID</th>
        <th>Fuel Level</th>
    </tr>
    <c:forEach var = "Truck_Log" items = "${trucklogList}">
        <tr>
            <td>${Truck_Log.getLogID()}</td>
            <td>${Truck_Log.getTruckIDVIN()}</td>
            <td>${Truck_Log.getDriverID()}</td>
            <td>${Truck_Log.getUsDotID()}</td>
            <td>${Truck_Log.getFuelLevel()}</td>
            <td><a href="/editTruck_Log/${Truck_Log.getLogID()}"><img src="../../img/edit.jpg" alt="edit_image" ></a></td>
            <td><a href="/deleteTruck_Log/${Truck_Log.getLogID()}"><img src="../../img/delete.jpg" alt="delete_image" ></a></td>
        </tr>
    </c:forEach>
</table>
</div>

<!-- Add Record Modal -->
<div class="modal fade" id="myModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Add New Record</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">

                <div class="container">

                            <form action="/submitTruckLog" method="post">
                                <div class="row">
                                    <div class="col-lg-8">
                                <input type="hidden" name="logID">
                                <label>Truck VIN</label>
                                        <select class="form-select" name="truckVin">
                                            <c:forEach var = "Truck" items = "${truckList}">
                                                <option value="${Truck.getTruck_ID_VIN()}">${Truck.getTruck_ID_VIN()}</option>
                                            </c:forEach>
                                        </select>
                                <label>Driver ID</label>
                                        <select class="form-select" name="driverID">
                                            <c:forEach var = "Truck_Driver" items = "${driverList}">
                                                <option value="${Truck_Driver.getDriver_ID()}">${Truck_Driver.getDriver_ID()}</option>
                                            </c:forEach>
                                        </select>
                                    </select>
                                <label>US DOT ID</label>
                                        <select class="form-select" name="usDotID">
                                            <c:forEach var = "Dot_Inspection" items = "${dotList}">
                                                <option value="${Dot_Inspection.getDot_Inspection_ID()}">${Dot_Inspection.getDot_Inspection_ID()}</option>
                                            </c:forEach>
                                        </select>
                                        <label>Fuel Level</label>
                                        <input type="text" name="fLevel">
                                            </div>
                                </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-primary">Save changes</button>
            </div>
            </form>
        </div>
    </div>
</div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>

</body>
</html>