<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hbrass</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style><%@include file="../css/style.css"%></style>
</head>
<body>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <h1 class="navbar-brand">In Big Wheels</h1>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="/">Logout</a></li>
            <li><a href="/tables">Table Management</a></li>
        </ul>
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
</body>
</html>