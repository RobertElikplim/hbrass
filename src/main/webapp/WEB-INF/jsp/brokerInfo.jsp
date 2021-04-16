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
        <a class="navbar-brand">Broker Info</a>
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
        <th>Contact ID</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Email</th>
        <th>Phone Number</th>
        <th>Broker ID</th>
        <th></th><th></th>
    </tr>
        <c:forEach var = "Broker_Info" items = "${brokerInfoList}">
            <tr>
                <td>${Broker_Info.getContact_ID()}</td>
                <td>${Broker_Info.getFirstName()}</td>
                <td>${Broker_Info.getLastName()}</td>
                <td>${Broker_Info.getEmail()}</td>
                <td>${Broker_Info.getPhoneNumber()}</td>
                <td>${Broker_Info.getBrokerID()}</td>
                <td><a href="/editBrokerInfo/${Broker_Info.getContact_ID()}"><img src="../../img/edit.jpg" alt="edit_image" ></a></td>
                <td><a href="/deleteBrokerInfo/${Broker_Info.getContact_ID()}"><img src="../../img/delete.jpg" alt="delete_image" ></a></td>
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
                            <form action="/submitBrokerInfo" method="post">
                                <div class="row">
                                    <div class="col-lg-6">
                                <input type="hidden" name="contactID">
                                <label>First Name</label>
                                <input type="text" name="firstName" placeholder="*">
                                <label>Last Name</label>
                                <input type="text" name="lastName" placeholder="*">
                                <label>Email</label>
                                <input type="text" name="email" placeholder="*">
                        </div>
                        <div class="col-lg-6">
                            <label>Phone Number</label>
                            <input type="text" name="phoneNumber" placeholder="*">
                            <label>Broker ID</label>
                            <select class="form-select" name="brokerID">
                                <c:forEach var = "Broker_Company" items = "${brokerList}">
                                    <option value="${Broker_Company.getBroker_ID()}">${Broker_Company.getBroker_ID()}-${Broker_Company.getBroker_Name()}</option>
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