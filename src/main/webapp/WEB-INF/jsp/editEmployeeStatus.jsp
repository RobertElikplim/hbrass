<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hbrass</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body style="text-align: center;">
<form method="post" action="/submitEmployeeStatus">
    <td><input type="hidden" name="empID" value="${Employee_Status.getEmployee_ID()}"></td>
    <table class="w3-table-all">
        <tr>
        <tr>
            <td>Employee Status</td>
        </tr>
        </tr>
        <tr>
            <td><input type="text" name="eStatus" value ="${Employee_Status.getEmployee_Status()}"></td>
        </tr>
        <br>
    </table>
    <input type="submit" value="Submit Change">
    <br>
</form>
</body>
</html>