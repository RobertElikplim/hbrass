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
<form method="post" action="/submitEmergencyContact">
    <h3>Fields with * are required</h3>
    <input type="hidden" name="EmergencyContactID">
    <table>
        <tr>
            <td>First Name</td>
            <td>Last Name</td>
            <td>Relationship</td>
            <td>Phone Number</td>
            <td>Street Address</td>
        </tr>
        <tr>
          <td><input type="text" name="FirstName" placeholder =  "*" > </td>
            <td><input type="text" name="LastName" placeholder =  "*"> </td>
            <td><input type="text" name="Relationship" placeholder =  "*" > </td>
            <td><input type="text" name="PhoneNumber" placeholder =  "*"> </td>
            <td><input type="text" name="StreetAddress" placeholder =  "*" ></td>
        </tr>
    </table>
    <input type="submit" value="Add Entry">
    <br>
    <br>
</form>
<table class="table table-bordered">
    <tr>
        <th>Emergency Contact ID</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Relationship</th>
        <th>Phone Number</th>
        <th>Street Address</th>
    </tr>
    <c:forEach var = "Emergency_Contact" items = "${emergencyContactsList}">
        <tr>
            <td>${Emergency_Contact.getEmergency_Contact_ID()}</td>
            <td>${Emergency_Contact.getFirst_Name()}</td>
            <td>${Emergency_Contact.getLast_Name()}</td>
            <td>${Emergency_Contact.getRelationship()}</td>
            <td>${Emergency_Contact.getPhone_Number()}</td>
            <td>${Emergency_Contact.getStreet_Address()}</td>
            <td><a href="/editEmergency_Contact/${Emergency_Contact.getEmergency_Contact_ID()}"><img src="../../img/edit.jpg" alt="edit_image" ></a></td>
            <td><a href="/deleteEmergency_Contact/${Emergency_Contact.getEmergency_Contact_ID()}"><img src="../../img/delete.jpg" alt="delete_image" ></a></td>
        </tr>
    </c:forEach>
</table>
</div>
</body>
</html>