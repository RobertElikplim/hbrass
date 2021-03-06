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
        <a class="navbar-brand">Employee Edit</a>
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

    <table class="table table-bordered">
        <tr>
            <td>First Name</td>
            <td>Last Name</td>
            <td>Phone Number</td>
            <td>Email</td>
            <td>Street Address</td>
            <td>City</td>
        </tr>
        <tr>
            <form action="/submitEmployee" method="post">
                <input type="hidden" name="empID" value="${employee.getEmployee_ID()}">
            <td><input class="form-control" type="text" name="fName" value ="${employee.getFirst_Name()}"></td>
            <td><input class="form-control" type="text" name="lName" value ="${employee.getLast_Name()}"></td>
            <td><input class="form-control" type="text" name="pNumber" value ="${employee.getPhone_Number()}"></td>
            <td><input class="form-control" type="text" name="eMail" value ="${employee.getEmail()}"></td>
            <td><input class="form-control" type="text" name="sAddy" value ="${employee.getStreet_Address()}"></td>
                <td><input class="form-control" type="text" name="city" value ="${employee.getCity()}"></td>
        </tr>
        <tr>
            <td>State Code</td>
            <td>Zip Code</td>
            <td>Position ID</td>
            <td>Driver ID</td>
            <td>Emergency Contact ID</td>
            <td>Employee Status</td>
        </tr>
        <tr>
            <td> <select class="form-select" name="sCode">
                <option selected value="${employee.getState_Code()}">${employee.getState_Code()}</option>
                <c:forEach var = "States" items = "${stateList}">
                    <option value="${States.getState_Code()}">${States.getState_Name()}</option>
                </c:forEach>
            </select></td>
            <td><input class="form-control" type="text" name="zCode" value ="${employee.getZip_Code()}"></td>
            <td><input class="form-control" type="text" name="posID" value ="${employee.getPosition_ID()}"></td>
            <td><input class="form-control" type="text" name="driverID" value ="${employee.getDriver_ID()}"></td>
            <td><input class="form-control" type="text" name="eCon" value ="${employee.getEmergency_Contact_ID()}"></td>
            <td><input class="form-control" type="text" name="eStatus" value ="${employee.getEmployee_Status()}"></td>
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