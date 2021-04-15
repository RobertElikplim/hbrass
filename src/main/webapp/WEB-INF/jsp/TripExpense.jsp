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
    <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Add New Record</h4>
                </div>
                <div class="modal-body">
                    <form method="post" action="/addTripExpense">
                        <input type="hidden" name="teID">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-4">
                                    <label>Fuel Cost</label><br>
                                        <input type="text" name="fCost" placeholder="*">
                                    <label>Scale Expense</label>
                                        <input type="text" name="sExpense" placeholder="*">
                                    <label>Other Expense</label>
                                        <input type="text" name="oExpense" placeholder="*">
                                </div>
                                <div class="col-lg-3">
                                    <label>Repair Expense </label><br>
                                        <input type="text" name="rExpense" placeholder="*">
                                    <label>Total Expense </label>
                                        <input type="text" name="tExpense" placeholder="*">
                                    <label>Load ID </label>
                                        <input type="text" name="loadID" placeholder="*">
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
</div>
</body>
</html>