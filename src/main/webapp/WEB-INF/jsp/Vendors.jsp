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
        <th>Vendor ID</th>
        <th>Vendor Name</th>
        <th>Phone Number</th>
        <th>Street Address</th>
        <th>City</th>
        <th>State Code</th>
        <th>Zip Code</th>
        <th>Email</th>
        <th>Vendor Tracker</th>
    </tr>

    <c:forEach var = "Vendor" items = "${vendorList}">
        <tr>
            <td>${Vendor.getVendor_ID()}</td>
            <td>${Vendor.getVendor_Name()}</td>
            <td>${Vendor.getPhone_Number()}</td>
            <td>${Vendor.getStreet_Address()}</td>
            <td>${Vendor.getCity()}</td>
            <td>${Vendor.getState_Code()}</td>
            <td>${Vendor.getZip_Code()}</td>
            <td>${Vendor.getEmail()}</td>
            <td>${Vendor.getVendor_Tracker()}</td>
            <td><a href="/editVendor/${Vendor.getVendor_ID()}"><img src="../../img/edit.jpg" alt="edit_image" ></a></td>
            <td><a href="/deleteVendor/${Vendor.getVendor_ID()}"><img src="../../img/delete.jpg" alt="delete_image" ></a></td>
        </tr>
    </c:forEach>
</table>
</div>
    <div class="modal fade" id="myModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Add New Record</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="container">
                                <form action="/addVendors" method="post">
                                    <div class="row">
                                    <div class="col-lg-6">
                                        <input type="hidden" name="vendorID">
                                        <label>Vendor Name</label>
                                            <input class="form-control" type="text" name="nameVendor">
                                        <label>Phone Number</label>
                                            <input class="form-control" type="text" name="vendorPhoneNumber">
                                        <label>Street Address</label>
                                            <input class="form-control" type="text" name="vendorStreetAddress">
                                        <label>City</label>
                                            <input class="form-control" type="text" name="vendorCity">
                                    </div>
                                    <div class="col-lg-6">
                                        <label>State Code</label>
                                                 <select class="form-select" name="vendorStateCode">
                                                     <c:forEach var = "States" items = "${stateList}">
                                                         <option value="${States.getState_Code()}">${States.getState_Name()}</option>
                                                     </c:forEach>
                                                 </select>
                                            <label>Zip Code</label>
                                            <input class="form-control" type="text" name="vendorZipCode">
                                            <label>Email</label>
                                            <input class="form-control" type="text" name="vendorEmail">
                                            <label>Vendor Tracker</label>
                                            <input class="form-control" type="text" name="vendorTracker">
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
            </div>
        </div>
    </div>
</body>
</html>