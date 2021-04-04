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



</body>
</html>