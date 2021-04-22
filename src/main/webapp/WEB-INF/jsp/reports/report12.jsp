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
    SELECT Truck.Truck_ID_VIN, Truck.Year, Truck.Make, Truck.Model, IFTA_Status, IFTA_Expiration_Date,
    Dot_Certification_Date, Dot_Expiration_Date, Mileage, Service_Date
    FROM Truck
    INNER JOIN IFTA_Sticker
    ON Truck.Truck_ID_VIN = IFTA_Sticker.Truck_ID_VIN
    INNER JOIN Dot_Inspection
    ON Truck.Truck_ID_VIN = Dot_Inspection.Truck_ID_VIN
    INNER JOIN Maintenance
    ON Truck.Truck_ID_VIN = Maintenance.Truck_ID_VIN
</sql:query>
<table class="table table-bordered">
    <tr>
        <th>VIN</th>
        <th>Year</th>
        <th>Make</th>
        <th>Model</th>
        <th>IFTA Status</th>
        <th>IFTA Expiration Date</th>
        <th>Dot Certification Date</th>
        <th>Dot Expiration Date</th>
        <th>Mileage</th>
        <th>Service Date</th>
    </tr>
    <c:forEach var = "row" items = "${report.rows}">
        <tr>
            <td><c:out value = "${row.Truck_ID_VIN}"/></td>
            <td><c:out value = "${row.Year}"/></td>
            <td><c:out value = "${row.Make}"/></td>
            <td><c:out value = "${row.Model}"/></td>
            <td><c:out value = "${row.IFTA_Status}"/></td>
            <td><c:out value = "${row.IFTA_Expiration_Date}"/></td>
            <td><c:out value = "${row.Dot_Certification_Date}"/></td>
            <td><c:out value = "${row.Dot_Expiration_Date}"/></td>
            <td><c:out value = "${row.Mileage}"/></td>
            <td><c:out value = "${row.Service_Date}"/></td>
        </tr>
    </c:forEach>
</table>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
</body>
</html>
