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
<form method="post" action="/submitPickUpLocation">
    <h3>Fields with * are required</h3>
    <input type="hidden" name="PickUpLocationID">

    <table class="table table-bordered">
        <tr>
            <td>PickUpTrackerCode</td>
            <td>PickUpDate</td>
            <td>StreetAddress</td>
            <td>City</td>
            <td>StateCode</td>
            <td>Zipcode</td>
        </tr>
        <tr>
            <td><input type="text" name="PickUpTrackerCode" placeholder="*"> </td>
            <td><input type="date" name="PickUpDate" placeholder="*"></td>
            <td><input type="text" name="StreetAddress" placeholder="*"></td>
            <td><input type="text" name="City"></td>
            <td><input type="text" name="StateCode"></td>
            <td><input type="text" name="Zipcode"></td>
        </tr>
    </table>
    <input type="submit" value="Add Entry">
    <br>
    <br>
</form>

<table class="w3-table-all">
    <tr>
        <th>Pick Up ID</th>
        <th>Pick Up Tracker Code</th>
        <th>Pick Up Date</th>
        <th>Street Address</th>
        <th>City</th>
        <th>State Code</th>
        <th>Zipcode</th>
    </tr>
    <c:forEach var = "Pick_Up_Location" items = "${puLocationList}">
        <tr>
            <td>${Pick_Up_Location.getPickUpID()}</td>
            <td>${Pick_Up_Location.getPuTrackerCode()}</td>
            <td>${Pick_Up_Location.getPuDate()}</td>
            <td>${Pick_Up_Location.getStreetAddress()}</td>
            <td>${Pick_Up_Location.getCity()}</td>
            <td>${Pick_Up_Location.getStateCode()}</td>
            <td>${Pick_Up_Location.getZipCode()}</td>
            <td><a href="/editPick_Up_Location/${Pick_Up_Location.getPickUpID()}"><img src="../../img/edit.jpg" alt="edit_image" ></a></td>
            <td><a href="/deletePick_Up_Location/${Pick_Up_Location.getPickUpID()}"><img src="../../img/delete.jpg" alt="delete_image" ></a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>