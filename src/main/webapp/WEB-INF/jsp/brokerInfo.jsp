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
< <body>
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

<table class="table table-bordered">
    <tr>
        <th>Contact ID</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Email</th>
        <th>Phone Number</th>
        <th>Broker ID</th>
        <th></th><th></th>
    </tr>
        <c:forEach var = "Broker_Info" items = "${brokerInfoList}">
            <tr>
                <td>${Broker_Info.getContact_ID()}</td>
                <td>${Broker_Info.getFirstName()}</td>
                <td>${Broker_Info.getLastName()}</td>
                <td>${Broker_Info.getEmail()}</td>
                <td>${Broker_Info.getPhoneNumber()}</td>
                <td>${Broker_Info.getBrokerID()}</td>
                <td><a href="/editBrokerInfo/${Broker_Info.getContact_ID()}"><img src="../../img/edit.jpg" alt="edit_image" ></a></td>
                <td><a href="/deleteBrokerInfo/${Broker_Info.getContact_ID()}"><img src="../../img/delete.jpg" alt="delete_image" ></a></td>
            </tr>
    </c:forEach>
</table>
</div>
<a href="/addBrokerInfo">Add New Record</a>
</body>
</html>