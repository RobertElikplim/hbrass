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
    SELECT employee.Last_Name, Truck_Driver.Driver_ID, Office_Position.Employee_Position, Emergency_Contact.Phone_Number
    FROM Employee
    inner JOIN Truck_Driver
    ON Truck_Driver.State_Code = employee.State_Code
    inner JOIN Office_Position
    ON Office_Position.Position_ID = employee.Position_ID
    inner JOIN Emergency_Contact
    ON Emergency_Contact.Emergency_Contact_ID = employee.Emergency_Contact_ID
    WHERE employee.Street_Address <> Emergency_Contact.Street_Address and employee.Driver_ID = Truck_Driver.Driver_ID
</sql:query>
<table class="table table-bordered">
    <tr>
        <th>Name</th>
        <th>Driver License</th>
        <th>Position</th>
        <th>Emergency Contact</th>
    </tr>
    <c:forEach var = "row" items = "${report.rows}">
        <tr>
            <td><c:out value = "${row.Last_Name}"/></td>
            <td><c:out value = "${row.Driver_ID}"/></td>
            <td><c:out value = "${row.Employee_Position}"/></td>
            <td><c:out value = "${row.Phone_Number}"/></td>
        </tr>
    </c:forEach>
</table>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
</body>
</html>
