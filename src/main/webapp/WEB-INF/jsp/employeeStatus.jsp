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
<form method="post" action="/submitEmployeeStatus">
    <h3>Fields with * are required</h3>
    <input type="hidden" name="empID">
    <table>
        <tr>
            <td>Employee Status</td>
        </tr>
        <tr>
            <td><input type="text" name="eStatus" placeholder="*"></td>
        </tr>
    </table>
    <input type="submit" value="Add Entry">
    <br>
    <br>
</form>
<table class="table table-bordered">
    <tr>
        <th>Employee ID</th>
        <th>Employee Status</th>
    </tr>
    <c:forEach var = "Employee_Status" items = "${employeeStatusList}">
        <tr>
            <td>${Employee_Status.getEmployee_ID()}</td>
            <td>${Employee_Status.getEmployee_Status()}</td>
            <td><a href="/editEmployee_Status/${Employee_Status.getEmployee_ID()}"><img src="../../img/edit.jpg" alt="edit_image" ></a></td>
            <td><a href="/deleteEmployee_Status/${Employee_Status.getEmployee_ID()}"><img src="../../img/delete.jpg" alt="delete_image" ></a></td>
        </tr>
    </c:forEach>
</table>
</div>
</body>
</html>