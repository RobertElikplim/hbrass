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
        <a class="navbar-brand">Maintenance</a>
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
        <th>Maintenance ID</th>
        <th>Mileage</th>
        <th>Service Date</th>
        <th>Type of Service</th>
        <th>Service Fee</th>
        <th>Vin</th>
    </tr>
    <c:forEach var = "Maintenance" items = "${maintenanceList}">
        <tr>
            <td>${Maintenance.getMaintenanceID()}</td>
            <td>${Maintenance.getMileage()}</td>
            <td>${Maintenance.getServiceDate()}</td>
            <td>${Maintenance.getService()}</td>
            <td>${Maintenance.getServiceFee()}</td>
            <td>${Maintenance.getTruckIDVIN()}</td>
            <td><a href="/editMaintenance/${Maintenance.getMaintenanceID()}"><img src="../../img/edit.jpg" alt="edit_image" ></a></td>
            <td><a href="/deleteMaintenance/${Maintenance.getMaintenanceID()}"><img src="../../img/delete.jpg" alt="delete_image" ></a></td>
        </tr>
    </c:forEach>
</table>
</div>
<!-- Add Record Modal -->
<div class="modal fade" id="myModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Add New Record</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">

                <div class="container">
                            <form action="/submitMaintenance" method="post">
                                <div class="row">
                                    <div class="col-lg-6">
                                <input type="hidden" name="MaintenanceID">
                                <label>Mileage</label>
                                <input class="form-control" type="text" name="Mileage">
                                <label>Service Date</label>
                                <input class="form-control" type="date" name="ServiceDate">
                                <label>Service</label>
                                <input class="form-control" type="text" name="Service">
                        </div>
                        <div class="col-lg-6">
                            <label>Service Fee</label>
                            <input class="form-control" type="text" name="ServiceFee">
                            <label>Truck VIN</label>
                            <select class="form-select" name="TruckIdVin">
                                <c:forEach var = "Truck" items = "${truckList}">
                                    <option value="${Truck.getTruck_ID_VIN()}">${Truck.getTruck_ID_VIN()}</option>
                                </c:forEach>
                            </select>
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