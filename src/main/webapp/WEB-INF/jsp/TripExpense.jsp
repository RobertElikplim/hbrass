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
</div>
</body>
</html>