<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jstl/sql" %>
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
    select Loads.Load_ID, Drop_Off_Location.Drop_Off_ID, States.State_Code, Pick_Up_location.Zip_Code
    from Loads
    join Drop_Off_Location
    on Drop_Off_Location.Drop_Off_ID = Loads.Drop_Off_ID
    join States
    on States.State_Code = Drop_Off_Location.State_Code
    join Pick_Up_location
    on Pick_Up_location.Pick_Up_ID = Drop_Off_Location.Drop_Off_ID
    WHERE Drop_Off_Location.City <> Pick_Up_location.City
</sql:query>
<table class="table table-bordered">
    <tr>
        <th>Load ID</th>
        <th>Drop Off ID</th>
        <th>State Code</th>
        <th>Zip Code</th>
    </tr>
    <c:forEach var = "row" items = "${report.rows}">
        <tr>
            <td><c:out value = "${row.Load_ID}"/></td>
            <td><c:out value = "${row.Drop_Off_ID}"/></td>
            <td><c:out value = "${row.State_Code}"/></td>
            <td><c:out value = "${row.Zip_Code}"/></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
