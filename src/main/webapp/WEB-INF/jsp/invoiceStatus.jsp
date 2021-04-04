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
        <th>Invoice Status ID</th>
        <th>Invoice Status</th>
    </tr>
    <c:forEach var = "Invoice_Status" items = "${invoiceStatusList}">
        <tr>
            <td>${Invoice_Status.getInvoice_ID()}</td>
            <td>${Invoice_Status.getInvoice_Status()}</td>
            <td><a href="/editInvoice_Status/${Invoice_Status.getInvoice_ID()}">Edit</a></td>
            <td><a href="/deleteInvoice_Status/${Invoice_Status.getInvoice_ID()}">Delete</a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>