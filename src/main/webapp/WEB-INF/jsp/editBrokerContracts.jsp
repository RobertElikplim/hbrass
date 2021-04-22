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
        <a class="navbar-brand">Broker Contract Edit</a>
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
    <form method="post" action="/submitBrokerContract">
        <td><input class="form-control" type="text" name="contractID" value="${Broker_Contract.getBroker_Contract_ID()}"></td>
        <td><select class="form-select" name="invoiceID">
            <option selected value="${Broker_Contract.getInvoice_ID()}">${Broker_Contract.getInvoice_ID()}</option>
            <c:forEach var = "Invoice" items = "${invoiceList}">
                <option value="${Invoice.getInvoiceID()}">${Invoice.getInvoiceID()}</option>
            </c:forEach>
        </select> </td>
        <td>
            <select class="form-select" name="brokerID">
                <option selected value="${Broker_Contract.getBroker_ID()}">${Broker_Contract.getBroker_ID()}</option>
                <c:forEach var = "Broker_Company" items = "${brokerList}">
                    <option value="${Broker_Company.getBroker_ID()}">${Broker_Company.getBroker_ID()}-${Broker_Company.getBroker_Name()}</option>
                </c:forEach>
            </select>
            </td>
        <td><input class="form-control" type="text" name="rate" value="${Broker_Contract.getRate()}"></td>
        <td><input class="form-control" type="text" name="fare" value="${Broker_Contract.getFare()}"></td>
        <td><input class="form-control" type="text" name="commission" value="${Broker_Contract.getCommission()}"></td>
        <td><input class="form-control" type="text" name="contractStatus" value="${Broker_Contract.getContract_Status()}"></td>
        <td><input class="form-control" type="text" name="form"></td>
    </tr>
</table>
    <input class="btn btn-primary" type="submit" value="Submit Changes">
</form>
</div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>

</body>
</html>