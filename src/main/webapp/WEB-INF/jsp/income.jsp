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
    <div class="button-row">
        <!-- Trigger the modal with a button -->
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">Add New Record</button>
    </div>


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
    <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Add New Record</h4>
                </div>
                <div class="modal-body">
                    <form method="post" action="/submitIncome">
                        <input type="hidden" name="incomeID">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-4">
                                    <label>Load ID</label><br>
                                        <input type="text" name="loadID" placeholder="*">
                                    <label>Load Fare</label>
                                        <input type="text" name="loadFare" placeholder="*">
                                    <label>Commission</label>
                                        <input type="text" name="commission" placeholder="*">
                                </div>
                                <div class="col-lg-3">
                                    <label>Insurance</label><br>
                                        <input type="text" name="insurance" placeholder="*">
                                    <label>Trip Expense</label>
                                         <input type="text" name="tripExpenseID" placeholder="*">
                                    <label>Income</label>
                                        <input type="text" name="totalIncome" placeholder="*">
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-primary">Save changes</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>