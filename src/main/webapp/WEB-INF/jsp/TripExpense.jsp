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
        <th>Trip Expense ID</th>
        <th>Fuel Cost</th>
        <th>Scale Expense</th>
        <th>Other Expense</th>
        <th>Repair Expense</th>
        <th>Total Expense</th>
        <th>Load ID</th>
    </tr>
    <c:forEach var = "Trip_Expense" items = "${tripExpenseList}">
        <tr>
            <td>${Trip_Expense.getTrip_Expense_ID()}</td>
            <td>${Trip_Expense.getFuel_Cost()}</td>
            <td>${Trip_Expense.getScale_Expense()}</td>
            <td>${Trip_Expense.getOther_Expense()}</td>
            <td>${Trip_Expense.getRepair_Expense()}</td>
            <td>${Trip_Expense.getTotal_Expense()}</td>
            <td>${Trip_Expense.getLoad_ID()}</td>
            <td><a href="/editTrip_Expense/${Trip_Expense.getTrip_Expense_ID()}"><img src="../../img/edit.jpg" alt="edit_image" ></a></td>
            <td><a href="/deleteTrip_Expense/${Trip_Expense.getTrip_Expense_ID()}"><img src="../../img/delete.jpg" alt="delete_image" ></a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>