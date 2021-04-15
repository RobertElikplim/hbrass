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
        <th>Broker Contract ID</th>
        <th>Invoice ID</th>
        <th>Broker ID</th>
        <th>Rate</th>
        <th>Fare</th>
        <th>Commission</th>
        <th>Contract Status</th>
        <th>Contract Form</th>
    </tr>


    <c:forEach var = "Broker_Contract" items = "${brokerContractList}">
        <tr>
            <td>${Broker_Contract.getBroker_Contract_ID()}</td>
            <td>${Broker_Contract.getInvoice_ID()}</td>
            <td>${Broker_Contract.getBroker_ID()}</td>
            <td>${Broker_Contract.getRate()}</td>
            <td>${Broker_Contract.getFare()}</td>
            <td>${Broker_Contract.getCommission()}</td>
            <td>${Broker_Contract.getContract_Status()}</td>
            <td>${Broker_Contract.getContract_Form()}</td>
            <td><a href="/editBrokerContracts/${Broker_Contract.getBroker_Contract_ID()}"><img src="../../img/edit.jpg" alt="edit_image" ></a></td>
            <td><a href="/deleteBrokerContract/${Broker_Contract.getBroker_Contract_ID()}"><img src="../../img/delete.jpg" alt="delete_image" ></a></td>
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
                            <form action="/submitBrokerContract" method="post">
                                <input type="hidden" name="contractID">
                                <label>Invoice ID</label>
                                <input type="text" name="invoiceID" placeholder="*">
                                <label>Broker ID</label>
                                <input type="text" name="brokerID" placeholder="*">
                                <label>Rate</label>
                                <input type="text" name="rate" placeholder="*">
                        </div>
                        <div class="col-lg-6">
                            <label>Fare</label>
                            <input type="text" name="fare" placeholder="*">
                            <label>Commission</label>
                            <input type="text" name="commission" placeholder="*">
                            <label>Contract Status</label>
                            <input type="text" name="contractStatus">
                        </div>
                    </div>
                </div>
            </div>

            <div class="modal-footer">
                <button type="submit" class="btn btn-primary">Save changes</button> </form>
            </div>
        </div>
    </div>

</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>

</body>
</html>