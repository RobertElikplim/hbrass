<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hbrass</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <style><%@include file="../css/style.css"%></style>
</head>
<body>
<form class="fmm" action="/back">
    <input type="submit" class="log" value="Logout">
</form>

<form class="tbm" method="post" action="/tables">
    <input type="submit" value="Table Management">
</form>

<table class="w3-table-all">
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