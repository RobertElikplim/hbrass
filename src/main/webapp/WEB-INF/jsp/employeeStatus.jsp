<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hbrass</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
<form method="post" action="/tables">
    <input type="submit" value="Table Management">
</form>
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
<table>
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

</body>
</html>