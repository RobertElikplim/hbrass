<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
        <a class="navbar-brand">DOT Edit</a>
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
    <form action="/submitPayroll" method="post">
        <table class="table table-bordered">
            <tr>
                <td>Rate</td>
                <td>Employee ID</td>
                <td>Payment Type</td>
                <td>Pay Period Start</td>
                <td>Pay Period End</td>
            </tr>
            <tr>
                <td>
                    <input type="hidden" name="PayrollID">
                    <input type="text" name="EmployeeID" value ="${Payroll.getEmployee_ID()}">
                </td>
                <td><input type="text" name="Rate" value ="${Payroll.getRate()}"></td>
                <td><input type="text" name="PaymentType" value ="${Payroll.getPayment_Type()}"></td>
                <td><input type="date" name="PayPeriodS" value ="${Payroll.getPay_Period_Start()}"></td>
                <td><input type="date" name="PayPeriodE" value ="${Payroll.getPay_Period_End()}"></td>
            </tr>
        </table>
        <input class="btn btn-primary" type="submit" value="Submit Changes">
    </form>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
</body>
</html>
