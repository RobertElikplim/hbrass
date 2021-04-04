<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hbrass</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <%--<style><%@include file="../css/style.css"%></style>--%>
</head>
<body>

<table class="w3-table-all">
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
            <td><a href="/editIncome/${Income.getIncome_ID()}"><img src="../../img/edit.jpg" alt="edit_image" ></a></td>
            <td><a href="/deleteIncome/${Income.getIncome_ID()}"><img src="../../img/delete.jpg" alt="delete_image" ></a></td>
        </tr>
    </c:forEach>
</table>
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
    <h3>Fields with * are required</h3>
    <form method="post" action="/submitIncome">
        <td>
            <input type="hidden" name="brokerID">
        <td>Auto Generated</td>
        <td><input type="text" name="loadFare" value="*"></td>
        <td><input type="text" name="commission" value="*"></td>
        <td><input type="text" name="insurance" value="*"></td>
        <td><input type="text" name="total income"></td>
        </td>
    </form>
</table>
<input type="submit" value="Submit Changes">
</body>
</html>