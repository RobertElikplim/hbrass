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
            <td><a href="/editInvoice/${Invoice.getInvoiceID()}">Edit</a></td>
            <td><a href="/deleteInvoice/${Invoice.getInvoiceID()}">Delete</a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>