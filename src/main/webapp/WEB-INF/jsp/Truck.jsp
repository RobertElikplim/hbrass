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
        <a class="navbar-brand">Trucks</a>
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
        <th>VIN</th>
        <th>Year</th>
        <th>License Type</th>
        <th>Vehicle Tracker</th>
        <th>Maker</th>
        <th>Model</th>
        <th>Policy Number</th>
    </tr>
    <c:forEach var = "Truck" items = "${truckList}">
        <tr>
            <td>${Truck.getTruck_ID_VIN()}</td>
            <td>${Truck.getYear()}</td>
            <td>${Truck.getLicense_Plate()}</td>
            <td>${Truck.getVehicle_Tracker()}</td>
            <td>${Truck.getMake()}</td>
            <td>${Truck.getModel()}</td>
            <td>${Truck.getPolicy_Number()}</td>
            <td><a href="/editTruck/${Truck.getTruck_ID()}"><img src="../../img/edit.jpg" alt="edit_image" ></a></td>
            <td><a href="/deleteTruck/${Truck.getTruck_ID()}"><img src="../../img/delete.jpg" alt="delete_image" ></a></td>
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
                        <div class="row">
                            <div class="col-lg-6">
                    <form method="post" action="/addtruck">
                        <input type="hidden" name="tId">
                                    <label>Truck Vin</label><br>
                        <select class="form-select" name="tVin">
                            <c:forEach var = "Truck" items = "${truckList}">
                                <option value="${Truck.getTruck_ID_VIN()}">${Truck.getTruck_ID_VIN()}</option>
                            </c:forEach>
                        </select>
                                    <label>Year</label>
                                    <input type="text" name="year" placeholder="*">
                                    <label>License Plate</label>
                                    <input type="text" name="lPlate" placeholder="*">
                                    <label>Vehicle Tracker</label><br>
                                    <input type="text" name="vTracker" placeholder="*">
                                </div>
                                <div class="col-lg-6">
                                    <label>Make </label>
                                    <input type="text" name="make" placeholder="*">
                                    <label>Model</label>
                                    <input type="text" name="model" placeholder="*">
                                    <label>Policy Number</label>
                                    <select class="form-select" name="pNumber">
                                        <c:forEach var = "Insurance" items = "${insuranceList}">
                                            <option value="${Insurance.getInsurance_ID()}">${Insurance.getInsurance_ID()}</option>
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