<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hbrass</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"></head>
<body>
<form class="fmm" action="/back">
    <input type="submit" class="log" value="Logout">
</form>

<form class="tbm" method="post" action="/tables">
    <input type="submit" value="Table Management">
</form>

<table class="w3-table-all">
    <tr>
        <th>Payroll ID</th>
        <th>Rate</th>
        <th>Employee ID</th>
        <th>Payment Type</th>
        <th>Pay Period Start</th>
        <th>Pay Period End</th>
    </tr>
    <c:forEach var = "Payroll" items = "${payrollList}">
        <tr>
            <td>${Payroll.getPayroll_ID()}</td>
            <td>${Payroll.getRate()}</td>
            <td>${Payroll.getEmployee_ID()}</td>
            <td>${Payroll.getPayment_Type()}</td>
            <td>${Payroll.getPay_Period_Start()}</td>
            <td>${Payroll.getPay_Period_End()}</td>
            <td><a href="/editPayroll/${Payroll.getPayroll_ID()}"><img src="../../img/edit.jpg" alt="edit_image" ></a></td>
            <td><a href="/deletePayroll/${Payroll.getPayroll_ID()}"><img src="../../img/delete.jpg" alt="delete_image" ></a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>