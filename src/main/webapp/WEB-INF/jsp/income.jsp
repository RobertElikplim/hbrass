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
    <input type="submit" value="Add Entry">
    <br>
    <br>
</form>
<table class="table table-bordered">
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
</div>
</body>
</html>