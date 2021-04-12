<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hbrass</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <style><%@include file="../css/style.css"%></style>
</head>
<body>
<form class="fmm" action="/back">
    <input type="submit" class="log" value="Logout">
</form>

<form class="tbm" method="post" action="/tables">
    <input type="submit" value="Table Management">
</form>

<form method="post" action="/submitInvoiceStatus">
    <h3>Fields with * are required</h3>
    <input type="hidden" name="invoiceStatusID" >
    <table>
        <tr>
            <td>Invoice Status</td>
        </tr>
        <tr>
            <td><input type="text" name="invoiceStatus" placeholder="*"> </td>
        </tr>
    </table>
    <input type="submit" value="Add Entry">
    <br>
    <br>
</form>
<table class="w3-table-all">
    <tr>
        <th>Invoice Status ID</th>
        <th>Invoice Status</th>
    </tr>
    <c:forEach var = "Invoice_Status" items = "${invoiceStatusList}">
        <tr>
            <td>${Invoice_Status.getInvoice_ID()}</td>
            <td>${Invoice_Status.getInvoice_Status()}</td>
            <td><a href="/editInvoice_Status/${Invoice_Status.getInvoice_ID()}"><img src="../../img/edit.jpg" alt="edit_image" ></a></td>
            <td><a href="/deleteInvoice_Status/${Invoice_Status.getInvoice_ID()}"><img src="../../img/delete.jpg" alt="delete_image" ></a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>