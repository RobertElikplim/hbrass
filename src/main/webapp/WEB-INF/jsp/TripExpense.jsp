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



<div class="container-fluid">
    <div class="button-row">
        <!-- Trigger the modal with a button -->
        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#myModal">Add New Record</button>
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
</div>
    <div class="modal fade" id="myModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Add New Record</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">

                    <div class="container">

                    <form method="post" action="/addTripExpense">
                        <div class="row">
                            <div class="col-lg-6">
                        <input type="hidden" name="teID">
                                    <label>Fuel Cost</label>
                                        <input type="text" name="fCost" placeholder="*">
                                    <label>Scale Expense</label>
                                        <input type="text" name="sExpense" placeholder="*">
                                    <label>Other Expense</label>
                                        <input type="text" name="oExpense" placeholder="*">
                                </div>
                                <div class="col-lg-6">
                                    <label>Repair Expense</label>
                                        <input type="text" name="rExpense" placeholder="*">
                                    <label>Total Expense</label>
                                        <input type="text" name="tExpense" placeholder="*">
                                    <label>Load ID</label>
                                    <select class="form-select" name="loadID">
                                        <c:forEach var = "Loads" items = "${loadList}">
                                            <option value="${Loads.getLoad_ID()}">${Loads.getLoad_ID()}</option>
                                        </c:forEach>
                                    </select>
                                </div>
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>


</body>
</html>