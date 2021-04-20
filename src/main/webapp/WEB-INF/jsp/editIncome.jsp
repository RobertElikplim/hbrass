<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hbrass</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
    <style><%@include file="../css/style.css"%></style>

</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand">Income Edit</a>
        <div class="navbar-right" id="navbarSupportedContent">
            <ul class="navbar-nav navbar-right">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/tables">Table Management</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/">Logout</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="container-fluid">
    <form action="/submitIncome" method="post">
    <table class="table table-bordered">
        <tr>
            <td>Load ID</td>
            <td>Load Fare</td>
            <td>Commission</td>
            <td>Insurance</td>
            <td>Trip Expense ID</td>
            <td>Total Income</td>
        </tr>
        <tr>
            <td>
                <input type="hidden" name="incomeID" value="${Income.getIncome_ID()}">
                <select class="form-select" name="loadID">
                    <selected option>${Income.getLoad_ID()}</selected>
                    <c:forEach var = "Loads" items = "${loadList}">
                        <option value="${Loads.getLoad_ID()}">${Loads.getLoad_ID()}</option>
                    </c:forEach>
                </select>
            </td>
            <td><input type="text" name="loadFare" value ="${Income.getLoad_Fare()}"></td>
            <td><input type="text" name="commission" value ="${Income.getCommission()}"></td>
            <td><input type="text" name="insurance" value ="${Income.getInsurance()}"></td>
            <td>
                <select class="form-select" name="tripExpenseID">
                    <selected option>${Income.getTrip_Expense_ID()}</selected>
                    <c:forEach var = "Trip_Expense" items = "${tripEL}">
                        <option value="${Trip_Expense.getTrip_Expense_ID()}">${Trip_Expense.getTrip_Expense_ID()}</option>
                    </c:forEach>
                </select>
            </td>
            <td><input type="text" name="totalIncome" value ="${Income.getTotal_Income()}"></td>
        </tr>
        <br>
    </table>
    <input class="btn btn-primary" type="submit" value="Submit Changes">
    <br>
</form>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>

</body>
</html>