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
            <li><a href="/">Login</a></li>
            <li><a href="/tables">Table Management</a></li>
        </ul>
    </div>
</nav>


<div class="container-fluid">
<table class="table table-bordered">
    <tr>
        <th>Broker ID</th>
        <th>Broker Name</th>
        <th>Street Address</th>
        <th>State Code</th>
        <th>Zip Code</th>
        <th>Phone Number</th>
        <th>Email Address</th>
        <th></th><th></th>
    </tr>
<c:forEach var = "Broker_Company" items = "${brokerCompanyList}">
    <tr>
        <td>${Broker_Company.getBroker_ID()}</td>
        <td>${Broker_Company.getBroker_Name()}</td>
        <td>${Broker_Company.getStreet_Address()}</td>
        <td>${Broker_Company.getState_Code()}</td>
        <td>${Broker_Company.getZip_Code()}</td>
        <td>${Broker_Company.getPhone_Number()}</td>
        <td>${Broker_Company.getEmail_Address()}</td>
        <td><a href="/editBrokerCompany/${Broker_Company.getBroker_ID()}"><img src="../../img/edit.jpg" alt="edit_image" ></a></td>
        <td><a href="/deleteBrokerCompany/${Broker_Company.getBroker_ID()}"><img src="../../img/delete.jpg" alt="delete_image" ></a></td>
    </tr>
</c:forEach>
</table>
</div>
<a href="/addBrokerCompany">Add New Record</a>
</body>
</html>