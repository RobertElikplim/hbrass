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
    SELECT Loads.Date, Pick_Up_Tracker_Code, Pick_Up_location.Street_Address, Drop_Off_Tracker_Code,
    Drop_Off_Location.Street_Address, employee.First_Name, Employee.Last_Name, Invoice.Invoice_Status, Broker_Contract.Broker_ID
    FROM loads
    INNER JOIN Pick_Up_location
    ON Loads.Pick_Up_ID = Pick_Up_location.Pick_Up_ID
    INNER JOIN Drop_Off_Location
    ON Loads.Drop_Off_ID = Drop_Off_Location.Drop_Off_ID
    LEFT JOIN employee
    ON loads.Driver_ID = employee.Driver_ID
    LEFT JOIN Truck
    ON loads.Truck_ID_VIN = Truck.Truck_ID_VIN
    join Invoice on
    Invoice.Client_ID = Loads.Client_ID
    join Broker_Contract on
    Broker_Contract.Broker_Contract_ID = Invoice.Broker_Contract_ID
    where Invoice_Status = 'open'
</sql:query>
<table class="table table-bordered">
    <tr>
        <th>Date</th>
        <th>Pick Up Tracker Code</th>
        <th>Pick Up Address</th>
        <th>Drop Off Tracker Code</th>
        <th>Drop Off Address</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Invoice Status</th>
        <th>Broker ID</th>
    </tr>
    <c:forEach var = "row" items = "${report.rows}">
        <tr>
            <td><c:out value = "${row.Date}"/></td>
            <td><c:out value = "${row.Pick_Up_Tracker_Code}"/></td>
            <td><c:out value = "${row.Street_Address}"/></td>
            <td><c:out value = "${row.Drop_Off_Tracker_Code}"/></td>
            <td><c:out value = "${row.Street_Address}"/></td>
            <td><c:out value = "${row.First_Name}"/></td>
            <td><c:out value = "${row.Last_Name}"/></td>
            <td><c:out value = "${row.Invoice_Status}"/></td>
            <td><c:out value = "${row.Broker_ID}"/></td>
        </tr>
    </c:forEach>
</table>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
</body>
</html>
