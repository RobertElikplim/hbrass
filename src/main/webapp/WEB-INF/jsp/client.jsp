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
<body style="text-align: center;">
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
        <th>Client ID</th>
        <th>Client Name</th>
        <th>Street Address</th>
        <th>City</th>
        <th>State Code</th>
        <th>Zip Code</th>
        <th>Phone Number</th>
        <th>Email</th>
    </tr>

    <c:forEach var = "Client" items = "${clientList}">

        <td>${Client.getClient_ID()}</td>
        <td>${Client.getClient_Name()}</td>
        <td>${Client.getStreet_Address()}</td>
        <td>${Client.getCity()}</td>
        <td>${Client.getState_Code()}</td>
        <td>${Client.getZip_Code()}</td>
        <td>${Client.getPhone_Number()}</td>
        <td>${Client.getEmail()}</td>
        <td><a href="/editClient/${Client.getClient_ID()}"><img src="../../img/edit.jpg" alt="edit_image" ></a></td>
        <td><a href="/deleteClient/${Client.getClient_ID()}"><img src="../../img/delete.jpg" alt="delete_image" ></a></td>
        </tr>
    </c:forEach>
</table>
</div>
</body>
</html>