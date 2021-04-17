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
        <a class="navbar-brand">Broker Info Edit</a>
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
        <th>Contact ID</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Email</th>
        <th>Phone Number</th>
        <th>Broker ID</th>

    </tr>

    <tr>
        <form method="post" action="/submitBrokerInfo">
        <td><input class="form-control" type="text" name="contactID" value="${Broker_Info.getContact_ID()}"></td>
        <td><input class="form-control" type="text" name="firstName" value="${Broker_Info.getFirstName()}"></td>
        <td><input class="form-control" type="text" name="lastName" value ="${Broker_Info.getLastName()}"></td>
        <td><input class="form-control" type="text" name="email" value ="${Broker_Info.getEmail()}"></td>
        <td><input class="form-control" type="text" name="phoneNumber" value ="${Broker_Info.getPhoneNumber()}"></td>
        <td><select class="form-select" name="brokerID">
            <c:forEach var = "Broker_Company" items = "${brokerList}">
                <option value="${Broker_Company.getBroker_ID()}">${Broker_Company.getBroker_ID()}-${Broker_Company.getBroker_Name()}</option>
            </c:forEach>
        </select></td>
        </form>
    </tr>
</table>
<input class="btn btn-primary" type="submit" value="Submit Changes">
</form>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>

</body>
</html>