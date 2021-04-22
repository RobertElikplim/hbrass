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
    SELECT Loads.Date, loads.Truck_ID_VIN, Truck.Make, Truck.Model, Trailer.Type_Of_Trailer, Trailer.Weight_Of_Trailer,
    Truck_Driver.Driver_ID
    FROM Loads
    INNER JOIN Truck
    ON Loads.Truck_ID_VIN = Truck.Truck_ID_VIN
    INNER JOIN Trailer
    ON Loads.Trailer_ID = Trailer.Trailer_ID
    INNER JOIN Truck_Driver
    ON Loads.Driver_ID = Truck_Driver.Driver_ID
</sql:query>
<table class="table table-bordered">
    <tr>
        <th>Date</th>
        <th>Truck ID VIN</th>
        <th>Make</th>
        <th>Model</th>
        <th>Type Of Trailer</th>
        <th>Weight Of Trailer</th>
        <th>Driver ID</th>
    </tr>
    <c:forEach var = "row" items = "${report.rows}">
        <tr>
            <td><c:out value = "${row.Date}"/></td>
            <td><c:out value = "${row.Truck_ID_VIN}"/></td>
            <td><c:out value = "${row.Make}"/></td>
            <td><c:out value = "${row.Model}"/></td>
            <td><c:out value = "${row.Type_Of_Trailer}"/></td>
            <td><c:out value = "${row.Weight_Of_Trailer}"/></td>
            <td><c:out value = "${row.Driver_ID}"/></td>
        </tr>
    </c:forEach>
</table>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
</body>
</html>
