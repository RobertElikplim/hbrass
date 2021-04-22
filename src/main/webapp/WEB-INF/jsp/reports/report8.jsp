<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jstl/sql" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hbrass</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
    <style><%@include file="../../css/style.css"%></style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand"> Report </a>
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
<sql:setDataSource  driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver"
                    url = "jdbc:sqlserver://172.26.54.48:1433;database=HBRASS"
                    user = "Hbrass"  password = "123"/>
<sql:query   var = "report">
    select loads.Load_ID,employee.First_Name, employee.Last_Name, Truck_Driver.State_Name, Trip_Expense.Total_Expense, Income.Total_Income
    from Loads
    join Truck_Driver on
    Truck_Driver.Driver_ID = Loads.Driver_ID
    join employee on
    employee.Driver_ID = Truck_Driver.Driver_ID
    join Trip_Expense on
    Trip_Expense.Load_ID = Loads.Load_ID
    join Income on
    Income.Load_ID = Loads.Load_ID
</sql:query>
<table class="table table-bordered">
    <tr>
        <th>Load ID</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>State Name</th>
        <th>Total Expense</th>
        <th>Total Income</th>
    </tr>
    <c:forEach var = "row" items = "${report.rows}">
        <tr>
            <td><c:out value = "${row.Load_ID}"/></td>
            <td><c:out value = "${row.First_Name}"/></td>
            <td><c:out value = "${row.Last_Name}"/></td>
            <td><c:out value = "${row.State_Name}"/></td>
            <td><c:out value = "${row.Total_Expense}"/></td>
            <td><c:out value = "${row.Total_Income}"/></td>
        </tr>
    </c:forEach>
</table>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
</body>
</html>
