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
        <a class="navbar-brand">Invoice Edit</a>
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
        <tr><form method="post" action="/submitInvoice">
        <tr>
            <td>Client ID</td>
            <td>Broker Contract ID</td>
            <td>Invoice Date</td>
            <td>Invoice Status</td>
        </tr>
        <input type="hidden" name="invoiceID" value="${Invoice.getInvoiceID()}">
        <td><select class="form-select" name="clientID">
            <c:forEach var = "Client" items = "${clientList}">
                <option value="${Client.getClient_ID()}">${Client.getClient_ID()}-${Client.getClient_Name()}</option>
            </c:forEach>
        </select></td>
        <td><select class="form-select" name="bcID">
            <option selected value="${Invoice.getBrokerContractID()}">${Invoice.getBrokerContractID()}</option>
            <c:forEach var = "Broker_Contract" items = "${brokerContractList}">
                <option value="${Broker_Contract.getBroker_Contract_ID()}">${Broker_Contract.getBroker_Contract_ID()}</option>
            </c:forEach>
        </select></td>
        <td><input class="form-control" type="date" name="iDate" value="${Invoice.getInvoiceDate()}"></td>
        <td><input class="form-control" type="text" name="istatus" value="${Invoice.getInvoiceStatus()}"></td>
        </tr>
    </table>
    <input class="btn btn-primary" type="submit" value="Submit Changes">
    </form>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>

</body>
</html>
