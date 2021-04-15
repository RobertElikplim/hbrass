<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hbrass</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand">In Big Wheels</a>
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
<form method="post" action="/submitIncome">
    <td><input type="hidden" name="incomeID" value="${Income.getIncome_ID()}"></td>
    <table class="w3-table-all">
        <tr>
            <td>Load Fare</td>
            <td>Commission</td>
            <td>Insurance</td>
            <td>Total Income</td>
        </tr>
        <tr>
            <td><input type="text" name="loadFare" value ="${Income.getLoad_Fare()}"></td>
            <td><input type="text" name="commission" value ="${Income.getCommission()}"></td>
            <td><input type="text" name="insurance" value ="${Income.getInsurance()}"></td>
            <td><input type="text" name="totalIncome" value ="${Income.getTotal_Income()}"></td>
        </tr>
        <br>
    </table>
    <input type="submit" value="Submit Changes">
    <br>
</form>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>

</body>
</html>