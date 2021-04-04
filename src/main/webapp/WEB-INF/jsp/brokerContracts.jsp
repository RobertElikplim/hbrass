<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hbrass</title>
    <style><%@include file="../css/style.css"%></style>
</head>
<body>

<table>
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
            <td><a href="/editBrokerContracts/${Broker_Contract.getBroker_Contract_ID()}">Edit</a></td>
            <td><a href="/deleteBrokerContract/${Broker_Contract.getBroker_Contract_ID()}">Delete</a></td>
        </tr>
    </c:forEach>
</table>



</body>
</html>