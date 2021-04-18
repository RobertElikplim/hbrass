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
        <a class="navbar-brand">Employees</a>
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
        <th>Employee ID</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Phone Number</th>
        <th>Email</th>
        <th>Street Address</th>
        <th>City</th>
        <th>State Code</th>
        <th>Zip Code</th>
        <th>Position ID</th>
        <th>Driver ID</th>
        <th>Emergency Contact ID</th>
    </tr>
    <c:forEach var = "employee" items = "${employeeList}">
        <tr>
            <td>${employee.getEmployee_ID()}</td>
            <td>${employee.getFirst_Name()}</td>
            <td>${employee.getLast_Name()}</td>
            <td>${employee.getPhone_Number()}</td>
            <td>${employee.getEmail()}</td>
            <td>${employee.getStreet_Address()}</td>
            <td>${employee.getCity()}</td>
            <td>${employee.getState_Code()}</td>
            <td>${employee.getZip_Code()}</td>
            <td>${employee.getPosition_ID()}</td>
            <td>${employee.getDriver_ID()}</td>
            <td>${employee.getEmergency_Contact_ID()}</td>
            <td><a href="/editEmployee/${employee.getEmployee_ID()}"><img src="../../img/edit.jpg" alt="edit_image" ></a></td>
            <td><a href="/deleteEmployee/${employee.getEmployee_ID()}"><img src="../../img/delete.jpg" alt="delete_image" ></a></td>
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
                            <form action="/submitEmployee" method="post">
                                <div class="row">
                                <div class="col-lg-6">
                                <input class="form-control" type="hidden" name="empID">
                                <label>First Name</label>
                                <input class="form-control" type="text" name="fName">
                                <label>Last Name</label>
                                <input class="form-control" type="text" name="lName">
                                <label>Phone Number</label>
                                <input class="form-control" type="text" name="pNumber">
                                <label>Email</label>
                                <input class="form-control" type="text" name="eMail">
                                <label>Street Address</label>
                                <input class="form-control" type="text" name="sAddy">
                        </div>
                        <div class="col-lg-6">
                            <label>City</label>
                            <input class="form-control" type="text" name="city">
                            <label>State Code</label>
                            <select class="form-select" name="sCode">
                                <c:forEach var = "States" items = "${stateList}">
                                    <option value="${States.getState_Code()}">${States.getState_Name()}</option>
                                </c:forEach>
                            </select>
                            <label>Zip Code</label>
                            <input class="form-control" type="text" name="zCode">
                            <label>Position ID</label>
                            <select class="form-select" name="posID">
                                <c:forEach var = "Office_Position" items = "${posList}">
                                    <option value="${Office_Position.getPosition_ID()}">${Office_Position.getPosition_ID()}-${Office_Position.getEmployee_Position()}</option>
                                </c:forEach>
                            </select>
                            <label>Driver ID</label>
                            <select class="form-select" name="driverID">
                                <c:forEach var = "Truck_Driver" items = "${driverList}">
                                    <option value="${Truck_Driver.getDriver_ID()}">${Truck_Driver.getDriver_ID()}</option>
                                </c:forEach>
                            </select>
                            <label>Emergency Contact</label>
                            <input class="form-control" type="text" name="eCon">
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
