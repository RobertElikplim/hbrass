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
        <a class="navbar-brand">Invoices</a>
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
        <th>Invoice ID</th>
        <th>Client ID</th>
        <th>Broker Contract ID</th>
        <th>Date</th>
        <th>Status</th>
    </tr>
    <c:forEach var = "Invoice" items = "${invoiceList}">
        <tr>
            <td>${Invoice.getInvoiceID()}</td>
            <td>${Invoice.getClientID()}</td>
            <td>${Invoice.getBrokerContractID()}</td>
            <td>${Invoice.getInvoiceDate()}</td>
            <td>${Invoice.getInvoiceStatusID()}</td>
            <td><a href="/editInvoice/${Invoice.getInvoiceID()}"><img src="../../img/edit.jpg" alt="edit_image" ></a></td>
            <td><a href="/deleteInvoice/${Invoice.getInvoiceID()}"><img src="../../img/delete.jpg" alt="delete_image" ></a></td>
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

                <div class="container" style="padding: 50px;">
                            <form action="/submitInvoice" method="post">
                                <div class="row">
                                    <div class="col-sm-8">
                                <input type="hidden" name="invoiceID">
                                <label>Client ID</label>
                                        <select class="form-select" name="clientID">
                                            <c:forEach var = "Client" items = "${clientList}">
                                                <option value="${Client.getClient_ID()}">${Client.getClient_ID()}-${Client.getClient_Name()}</option>
                                            </c:forEach>
                                        </select>
                                <label>Broker Contract ID</label>
                                        <select class="form-select" name="bcID">
                                            <c:forEach var = "Broker_Contract" items = "${brokerContractList}">
                                                <option value="${Broker_Contract.getBroker_Contract_ID()}">${Broker_Contract.getBroker_Contract_ID()}</option>
                                            </c:forEach>
                                        </select>
                                        <label>Date</label>
                                        <input class="form-control" type="date" name="iDate">
                                        <label>Status</label>
                                        <input class="form-control" type="text" name="istatus">
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







<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>



</body>
</html>