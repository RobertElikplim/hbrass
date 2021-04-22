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
        <a class="navbar-brand">Report</a>
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

<div class="container container-tables-listgroup">
    <div class="list-group">
        <div class="row">
            <div class="col-sm-4">
                <a href="/report" class="list-group-item">Loads with drop and pick up in same state</a>
                <a href="/report1" class="list-group-item">Invoice Status Per Client & Date</a>
                <a href="/report2" class="list-group-item">Invoice</a>
                <a href="/report3" class="list-group-item">Invoice</a>
                <a href="/report4" class="list-group-item">Drivers with different addresses from emergency contact</a>
                <a href="/report5" class="list-group-item">Unresolved Incidents</a>
                <a href="/report6" class="list-group-item">Trips With Repair Expense</a>
                <a href="/report7" class="list-group-item">Trips With Repair Expense(2nd Half Of Year) </a>
                <a href="/report8" class="list-group-item">Total Income and Expense per Trip</a>
                <a href="/report9" class="list-group-item">Delivery Info Per Client</a>
                <a href="/report10" class="list-group-item">Ist Quarter Total expense for each trip</a>
            </div>
            <div class="col-sm-4">
                <a href="/report11" class="list-group-item">Trips with Loads not totally resolved</a>
                <a href="/report12" class="list-group-item">Truck Maintenance Schedule</a>
                <a href="/report13" class="list-group-item">All Drivers With License Information</a>
                <a href="/report14" class="list-group-item">4th Quarter Report for Pick and Drop Off</a>
                <a href="/report15" class="list-group-item">4th Quarter Expense for Trips</a>
                <a href="/report16" class="list-group-item">Active Brokers</a>
                <a href="/report17" class="list-group-item">Ist Quarter Report for Pick and Drop Off</a>
                <a href="/report18" class="list-group-item">2nd Quarter Expenses for Trips</a>
                <a href="/report19" class="list-group-item">Delivered Loads Without Issues</a>
                <a href="/report20" class="list-group-item">Loads with same day drop off</a>
                <a href="/report21" class="list-group-item">Total Expenses for All Trips</a>
            </div>
            <div class="col-sm-4">
                <a href="/report22" class="list-group-item">All Expenses per Trip</a>
                <a href="/report23" class="list-group-item">Trips With Total Expense Less Than 100</a>
                <a href="/report24" class="list-group-item">Loads with same State for Drop and Pick Up Locations</a>
                <a href="/report25" class="list-group-item">Matches Driver and Truck to load</a>
                <a href="/report26" class="list-group-item">Second Quarter Report Drop off and Pick up for drivers </a>
                <a href="/report27" class="list-group-item">3rd Quarter Report for Total expenses for each trip </a>
                <a href="/report28" class="list-group-item">Total Miles Driven For a Load</a>
                <a href="/report29" class="list-group-item">Drop and Pick Up Codes Per Client</a>
                <a href="/report30" class="list-group-item">Truck Log With Ifta and DOT Info</a>
                <a href="/report31" class="list-group-item">3rd Quarter Report for Pick and Drop Off</a>
            </div>
        </div>
    </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>

</body>
</html>
