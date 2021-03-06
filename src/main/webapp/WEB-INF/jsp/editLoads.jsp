<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

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
        <a class="navbar-brand">DOT Edit</a>
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
    <form action="/submitLoads" method="post">
        <table class="table table-bordered">
            <tr>
                <th>Client ID</th>
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
            <tr>
                <td><select class="form-select" name="clientID">
                    <option selected value="${Loads.getClient_ID()}">${Loads.getClient_ID()}</option>
                    <c:forEach var = "Client" items = "${clientList}">
                        <option value="${Client.getClient_ID()}">${Client.getClient_ID()}-${Client.getClient_Name()}</option>
                    </c:forEach>
                </select></td>
                <td>
                    <input type="hidden" name="loadID">
                    <input class="form-control" type="date" name="dateLoads" value ="${Loads.getDate()}" >
                </td>
                <td>
                        <select class="form-select" name="pickUP">
                            <option selected value="${Loads.getPick_Up_ID()}">${Loads.getPick_Up_ID()}</option>
                            <c:forEach var = "Pick_Up_location" items = "${pickUpList}">
                                <option value="${Pick_Up_location.getPickUpID()}">${Pick_Up_location.getPickUpID()}</option>
                            </c:forEach>
                        </select>
                </td>
                <td>
                    <select class="form-select" name="dropOff">
                        <option selected value="${Loads.getDrop_Off_ID()}">${Loads.getDrop_Off_ID()}</option>>
                            <c:forEach var = "Drop_Off_Location" items = "${dropOffList}">
                                <option value="${Drop_Off_Location.getDrop_Off_ID()}}">${Drop_Off_Location.getDrop_Off_ID()}</option>
                            </c:forEach>
                    </select>
                </td>
                <td>
                    <select class="form-select" name="vinNumber">
                        <option selected value="${Loads.getTruck_ID_VIN()}">${Loads.getTruck_ID_VIN()}</option>
                        <c:forEach var = "Truck" items = "${vinList}">
                            <option value="${Truck.getTruck_ID_VIN()}">${Truck.getTruck_ID_VIN()}</option>
                        </c:forEach>
                    </select>
                </td>
                <td>
                    <select class="form-select" name="trailerID">
                        <option selected value="${Loads.getTrailer_ID()}">${Loads.getTrailer_ID()}<option>
                        <c:forEach var = "Trailer" items = "${trailerList}">
                            <option value="${Trailer.getTrailer_ID()}">${Trailer.getTrailer_ID()}</option>
                        </c:forEach>
                    </select>
                </td>
                <td>
                    <select class="form-select" name="driverID">
                        <option selected value="${Loads.getDriver_ID()}">${Loads.getDriver_ID()}</option>
                        <c:forEach var = "Truck_Driver" items = "${driverList}">
                            <option value="${Truck_Driver.getDriver_ID()}">${Truck_Driver.getDriver_ID()}</option>
                        </c:forEach>
                    </select>
                </td>
                <td><input class="form-control" type="text" name="deadHD" value ="${Loads.getDead_Head()}"></td>
                <td><input class="form-control" type="text" name="loadedMiles" value ="${Loads.getLoaded_Miles()}"></td>
                <td><input class="form-control" type="text" name="totalMiles" value ="${Loads.getTotal_Miles()}"></td>
                <td><input class="form-control" type="text" name="driverPay" value ="${Loads.getDriver_Pay()}"></td>
                <td><input class="form-control" type="text" name="remarks" value ="${Loads.getRemarks()}"></td>
            </tr>
        </table>
        <input class="btn btn-primary" type="submit" value="Submit Changes">
    </form>

</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
</body>
</html>
