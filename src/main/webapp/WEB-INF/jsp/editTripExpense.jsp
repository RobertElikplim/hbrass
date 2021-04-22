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
        <a class="navbar-brand">Trip Expense Edit</a>
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
    <form action="/addTripExpense" method="post">
        <input type="hidden" name="teID" value="${Trip_Expense.getTrip_Expense_ID()}">
        <table class="table table-bordered">
            <tr>
                <td>Fuel Cost</td>
                <td>Scale Expense</td>
                <td>Other Expense</td>
                <td>Repair Expense</td>
                <td>Total Expense</td>
                <td>Load ID</td>
            </tr>
            <tr>
                <td><input type-="text" class="form-control" name="fCost" value="${Trip_Expense.getFuel_Cost()}"></td>
                <td><input class="form-control" type="text" name="sExpense" value ="${Trip_Expense.getScale_Expense()}"></td>
                <td><input class="form-control" type="text" name="oExpense" value ="${Trip_Expense.getOther_Expense()}"></td>
                <td><input class="form-control" type="text" name="rExpense" value ="${Trip_Expense.getRepair_Expense()}"></td>
                <td><input type="text" class="form-control" name="tExpense" placeholder="Added Automatically" disabled>
                <td> <select class="form-select" name="loadID">
                    <option selected value="${Trip_Expense.getLoad_ID()}">${Trip_Expense.getLoad_ID()}</option>
                    <c:forEach var = "Loads" items = "${loadList}">
                        <option value="${Loads.getLoad_ID()}">${Loads.getLoad_ID()}</option>
                    </c:forEach>
                </select></td>
            </tr>
        </table>
        <input class="btn btn-primary" type="submit" value="Submit Changes">
    </form>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>

</body>
</html>
