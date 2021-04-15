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
        <td><input type="text" name="contractID" value="${Broker_Contract.getBroker_Contract_ID()}"></td>
        <td><input type="text" name="invoiceID" value="${Broker_Contract.getInvoice_ID()}"></td>
        <td><input type="text" name="brokerID" value="${Broker_Contract.getBroker_ID()}"></td>
        <td><input type="text" name="rate" value="${Broker_Contract.getRate()}"></td>
        <td><input type="text" name="fare" value="${Broker_Contract.getFare()}"></td>
        <td><input type="text" name="commission" value="${Broker_Contract.getCommission()}"></td>
        <td><input type="text" name="contractStatus" value="${Broker_Contract.getContract_Status()}"></td>
        <td><input type="text" name="form"></td>
    </tr>
</table>
<input type="submit" value="Submit Changes">
</form>

<table>
            <tr>
                <th>Broker ID</th>
                <th>Broker Name</th>

            </tr>
            <tr>
            <c:forEach var = "Broker_Company" items = "${brokerCompanyList}">
            <td>${Broker_Company.getBroker_ID()}</td>
            <td>${Broker_Company.getBroker_Name()}</td>

            </tr>
            </c:forEach>
</table>
</div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>

</body>
</html>