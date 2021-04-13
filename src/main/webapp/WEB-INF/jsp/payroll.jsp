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
        <th>Payroll ID</th>
        <th>Rate</th>
        <th>Employee ID</th>
        <th>Payment Type</th>
        <th>Pay Period Start</th>
        <th>Pay Period End</th>
    </tr>
    <c:forEach var = "Payroll" items = "${payrollList}">
        <tr>
            <td>${Payroll.getPayroll_ID()}</td>
            <td>${Payroll.getRate()}</td>
            <td>${Payroll.getEmployee_ID()}</td>
            <td>${Payroll.getPayment_Type()}</td>
            <td>${Payroll.getPay_Period_Start()}</td>
            <td>${Payroll.getPay_Period_End()}</td>
            <td><a href="/editPayroll/${Payroll.getPayroll_ID()}"><img src="../../img/edit.jpg" alt="edit_image" ></a></td>
            <td><a href="/deletePayroll/${Payroll.getPayroll_ID()}"><img src="../../img/delete.jpg" alt="delete_image" ></a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>