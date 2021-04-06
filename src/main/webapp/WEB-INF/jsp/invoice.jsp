<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hbrass</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"></head>
<body>
<form method="post" action="/tables">
    <input type="submit" value="Table Management">
</form>

<table class="w3-table-all">
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

</body>
</html>