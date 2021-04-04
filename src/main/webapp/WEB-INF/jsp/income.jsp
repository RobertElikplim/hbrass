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
        <th>Income ID</th>
        <th>Load ID</th>
        <th>Load Fare</th>
        <th>Commission</th>
        <th>Insurance</th>
        <th>Trip Expense ID</th>
        <th>Total Income</th>
    </tr>
    <c:forEach var = "Income" items = "${incomeList}">
        <tr>
            <td>${Income.getIncome_ID()}</td>
            <td>${Income.getLoad_ID()}</td>
            <td>${Income.getLoad_Fare()}</td>
            <td>${Income.getCommission()}</td>
            <td>${Income.getInsurance()}</td>
            <td>${Income.getTrip_Expense_ID()}</td>
            <td>${Income.getTotal_Income()}</td>
            <td><a href="/editIncome/${Income.getIncome_ID()}">Edit</a></td>
            <td><a href="/deleteIncome/${Income.getIncome_ID()}">Delete</a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>