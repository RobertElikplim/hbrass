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
    <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Add New Record</h4>
                </div>
                <div class="modal-body">
                    <form method="post" action="/addEmployee">
                        <input type="hidden" name="empID">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-4">
                                    <label>First Name</label><br>
                                        <input type="text" name="fName" placeholder="*">
                                    <label>Last Name</label>
                                        <input type="text" name="lName" placeholder="*">
                                    <label>Phone Number</label>
                                         <input type="text" name="pNumber" placeholder="*">
                                    <label>Email</label><br>
                                        <input type="text" name="eMail" placeholder="*">
                                    <label>Street Address</label>
                                        <input type="text" name="sAddy" placeholder="*"><br>
                                    <label>City</label><br>
                                        <input type="text" name="city" placeholder="*">
                                </div>
                                <div class="col-lg-3">
                                    <label>State Code</label><br>
                                        <input type="text" name="sCode" placeholder="*">
                                    <label>Zip Code</label>
                                        <input type="text" name="zCode" placeholder="*">
                                    <label>Position ID</label>
                                        <input type="text" name="" placeholder="*">
                                    <label>Driver ID</label><br>
                                        <input type="text" name="driverID" placeholder="*">
                                    <label>Emergency Contact</label>
                                        <input type="text" name="eCon" placeholder="*">
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
<table class="table table-bordered">
    <tr>
        <th>Employee ID</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Phone Number</th>
        <th>Email</th>
        <th>Street Address</th>
        <th>City</th>
        <th>State Code</th>
        <th>Zip Code</th>
        <th>Position ID</th>
        <th>Driver ID</th>
        <th>Emergency Contact ID</th>
    </tr>
    <c:forEach var = "employee" items = "${employeeList}">
        <tr>
            <td>${employee.getEmployee_ID()}</td>
            <td>${employee.getFirst_Name()}</td>
            <td>${employee.getLast_Name()}</td>
            <td>${employee.getPhone_Number()}</td>
            <td>${employee.getEmail()}</td>
            <td>${employee.getStreet_Address()}</td>
            <td>${employee.getCity()}</td>
            <td>${employee.getState_Code()}</td>
            <td>${employee.getZip_Code()}</td>
            <td>${employee.getPosition_ID()}</td>
            <td>${employee.getDriver_ID()}</td>
            <td>${employee.getEmergency_Contact_ID()}</td>
            <td><a href="/editEmployee/${employee.getEmployee_ID()}"><img src="../../img/edit.jpg" alt="edit_image" ></a></td>
            <td><a href="/deleteEmployee/${employee.getEmployee_ID()}"><img src="../../img/delete.jpg" alt="delete_image" ></a></td>
        </tr>
    </c:forEach>
</table>
</div>
</body>
</html>