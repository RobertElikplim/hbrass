<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hbrass</title>
    <style><%@include file="../css/style.css"%></style>
</head>
<body>

<table>
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
            <td><a href="/editSchedule/${Schedule.getScheduleID()}">Edit</a></td>
            <td><a href="/deleteSchedule/${Schedule.getScheduleID()}">Delete</a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>