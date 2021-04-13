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
        <th>Schedule ID</th>
        <th>Employee ID</th>
        <th>Time off Request</th>
        <th>Vacation Start</th>
        <th>Vacation End</th>
    </tr>
    <c:forEach var = "Schedule" items = "${scheduleList}">
        <tr>
            <td>${Schedule.getScheduleID()}</td>
            <td>${Schedule.getEmployeeID()}</td>
            <td>${Schedule.getTimeOffRequest()}</td>
            <td>${Schedule.getVacationStart()}</td>
            <td>${Schedule.getVacationEnd()}</td>
            <td><a href="/editSchedule/${Schedule.getScheduleID()}"><img src="../../img/edit.jpg" alt="edit_image" ></a></td>
            <td><a href="/deleteSchedule/${Schedule.getScheduleID()}"><img src="../../img/delete.jpg" alt="delete_image" ></a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>