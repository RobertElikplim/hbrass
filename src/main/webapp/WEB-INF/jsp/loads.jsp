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
        <a class="navbar-brand">Loads</a>
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
        <th>Load ID</th>
        <th>Date</th>
        <th>Pick Up ID</th>
        <th>Drop Off ID</th>
        <th>VIN</th>
        <th>Trailer ID</th>
        <th>Driver ID</th>
        <th>Dead Head</th>
        <th>Loaded Miles</th>
        <th>Total Miles</th>
        <th>Driver Pay</th>
        <th>Remarks</th>
    </tr>
    <c:forEach var = "Loads" items = "${loadsList}">
        <tr>
            <td>${Loads.getLoad_ID()}</td>
            <td>${Loads.getDate()}</td>
            <td>${Loads.getPick_Up_ID()}</td>
            <td>${Loads.getDrop_Off_ID()}</td>
            <td>${Loads.getTruck_ID_VIN()}</td>
            <td>${Loads.getTrailer_ID()}</td>
            <td>${Loads.getDriver_ID()}</td>
            <td>${Loads.getDead_Head()}</td>
            <td>${Loads.getLoaded_Miles()}</td>
            <td>${Loads.getTotal_Miles()}</td>
            <td>${Loads.getDriver_Pay()}</td>
            <td>${Loads.getRemarks()}</td>
            <td><a href="/editLoads/${Loads.getLoad_ID()}"><img src="../../img/edit.jpg" alt="edit_image" ></a></td>
            <td><a href="/deleteLoads/${Loads.getLoad_ID()}"><img src="../../img/delete.jpg" alt="delete_image" ></a></td>
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

                <div class="container" style="padding: 45px;">
                            <form action="/submitLoads" method="post">
                                <div class="row">
                                    <div class="col-lg-6">
                                <input type="hidden" name="loadID">
                                <label>Date</label>
                                <input class="form-control" type="date" name="dateLoads">
                                <label>Pick Up Tracker</label>
                                        <select class="form-select" name="pickUP">
                                            <c:forEach var = "Pick_Up_location" items = "${pickUpList}">
                                                <option value="${Pick_Up_location.getPuTrackerCode()}">${Pick_Up_location.getPuTrackerCode()}</option>
                                            </c:forEach>
                                        </select>
                                <label>Drop of Tracker</label>
                                        <select class="form-select" name="dropOff">
                                            <c:forEach var = "Drop_Off_Location" items = "${dropOffList}">
                                                <option value="${Drop_Off_Location.getDrop_Off_ID()}">${Drop_Off_Location.getDrop_Off_ID()}</option>
                                            </c:forEach>
                                        </select>
                                <label>VIN</label>
                                        <select class="form-select" name="vinNumber">
                                            <c:forEach var = "Truck" items = "${truckList}">
                                                <option value="${Truck.getTruck_ID_VIN()}">${Truck.getTruck_ID_VIN()}</option>
                                            </c:forEach>
                                        </select>
                                <label>Trailer ID</label>
                                        <select class="form-select" name="trailerID">
                                            <c:forEach var = "Trailer" items = "${trailerList}">
                                                <option value="${Trailer.getTrailer_ID()}">${Trailer.getTrailer_Code()}</option>
                                            </c:forEach>
                                        </select>
                                <label>Driver ID</label>
                                        <select class="form-select" name="driverID">
                                            <c:forEach var = "Truck_Driver" items = "${driverList}">
                                                <option value="${Truck_Driver.getDriver_ID()}">${Truck_Driver.getDriver_ID()}</option>
                                            </c:forEach>
                                        </select>
                        </div>
                        <div class="col-lg-6">
                            <label>Dead Head</label>
                            <input class="form-control" type="text" name="deadHD">
                            <label>Loaded Miles</label>
                            <input class="form-control" type="text" name="loadedMiles">
                            <label>Total Miles</label>
                            <input class="form-control" type="text" name="totalMiles">
                            <label>Driver Pay</label>
                            <input class="form-control" type="text" name="driverPay">
                            <label>Remarks</label>
                            <input class="form-control" type="text" name="remarks">
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
