<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hbrass</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <%--<style><%@include file="../css/style.css"%></style>--%>
</head>
<body>
<form method="post" action="/tables">
    <input type="submit" value="Table Management">
</form>

<form method="post" action="/submitIncome">
    <h3>Fields with * are required</h3>
    <input type="hidden" name="incomeID">
    <input type="hidden" name="loadID" >
    <input type="hidden" name="tripExpenseID" >
    <table>
        <tr>
            <td>Load Fare</td>
            <td>Commission</td>
            <td>Insurance</td>
            <td>Total Income</td>
        </tr>
        <tr>
            <td><input type="text" name="loadFare" placeholder="*"> </td>
            <td><input type="text" name="commission" placeholder="*"></td>
            <td><input type="text" name="insurance" placeholder="*"></td>
            <td><input type="text" name="totalIncome"></td>
        </tr>
    </table>
    <input type="submit" value="Submit Changes">
    <br>
    <br>
</form>
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
</body>
</html>