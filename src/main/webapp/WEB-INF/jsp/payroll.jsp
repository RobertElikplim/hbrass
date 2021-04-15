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
                    <a class="nav-link" href="/login">Logout</a>
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
        <th>Payroll ID</th>
        <th>Rate</th>
        <th>Employee ID</th>
        <th>Payment Type</th>
        <th>Pay Period Start</th>
        <th>Pay Period End</th>
    </tr>
    <c:forEach var = "Payroll" items = "${payrollList}">
        <tr>
            <td>${Payroll.getPayroll_ID()}</td>
            <td>${Payroll.getRate()}</td>
            <td>${Payroll.getEmployee_ID()}</td>
            <td>${Payroll.getPayment_Type()}</td>
            <td>${Payroll.getPay_Period_Start()}</td>
            <td>${Payroll.getPay_Period_End()}</td>
            <td><a href="/editPayroll/${Payroll.getPayroll_ID()}"><img src="../../img/edit.jpg" alt="edit_image" ></a></td>
            <td><a href="/deletePayroll/${Payroll.getPayroll_ID()}"><img src="../../img/delete.jpg" alt="delete_image" ></a></td>
        </tr>
    </c:forEach>
</table>
</div>
<!-- Add Record Modal -->
<div class="modal fade" id="myModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Add New Record</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">

                <div class="container">
                    <div class="row">
                        <div class="col-lg-6">
                            <form action="/submitPayroll" method="post">
                                <input type="hidden" name="PayrollID">
                                <label>Employee ID</label>
                                    <input type="text" name="EmployeeID">
                                <label>Rate</label>
                                    <input type="text" name="Rate">
                                <label>Payment Type</label>
                                    <input type="text" name="PaymentType">
                        </div>
                        <div class="col-lg-6">
                            <label>Period Start</label>
                                 <input type="text" name="PayPeriodS">
                            <label>Period End</label>
                                <input type="text" name="PayPeriodE">
                        </div>
                    </div>
                </div>
            </div>

            <div class="modal-footer">
                <button type="submit" class="btn btn-primary">Save changes</button> </form>
            </div>
        </div>
    </div>

</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>


</body>
</html>