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
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Select
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="/brokerCompany">Broker Companies</a></li>
                        <li><a class="dropdown-item" href="/brokerContracts">Broker Contracts</a></li>
                        <li><a class="dropdown-item" href="/brokerInfo">Broker Info</a></li>
                        <li><a class="dropdown-item" href="/client">Clients</a></li>
                        <li><a class="dropdown-item" href="/country">Countries</a></li>
                        <li><a class="dropdown-item" href="/dotInspection">DOT Inspections</a></li>
                        <li><a class="dropdown-item" href="/dropOffLocation">Drop Off Locations</a></li>
                        <li><a class="dropdown-item" href="/emergencyContacts">Emergency Contacts</a></li>
                        <li><a class="dropdown-item" href="/employee">Employees</a></li>
                        <li><a class="dropdown-item" href="/employeeStatus">Employee Status</a></li>
                        <li><a class="dropdown-item" href="/iftaSticker">IFTA Sticker</a></li>
                        <li><a class="dropdown-item" href="/income">Income</a></li>
                        <li><a class="dropdown-item" href="/insurance">Insurance</a></li>
                        <li><a class="dropdown-item" href="/invoice">Invoices</a></li>
                        <li><a class="dropdown-item" href="/invoiceStatus">Invoice Status</a></li>
                        <li><a class="dropdown-item" href="/loadBoard">Load Boards</a></li>
                        <li><a class="dropdown-item" href="/loads">Loads</a></li>
                        <li><a class="dropdown-item" href="/maintenance">Maintenance</a></li>
                        <li><a class="dropdown-item" href="/miscellaneous">Miscellaneous</a></li>
                        <li><a class="dropdown-item" href="/officePosition">Office Position</a></li>
                        <li><a class="dropdown-item" href="/payroll">Payroll</a></li>
                        <li><a class="dropdown-item" href="/puLocation">Pick Up Location</a></li>
                        <li><a class="dropdown-item" href="/schedule">Schedule</a></li>
                        <li><a class="dropdown-item" href="/states">States</a></li>
                        <li><a class="dropdown-item" href="/tire">Tires</a></li>
                        <li><a class="dropdown-item" href="/tireVendor">Tire Vendors</a></li>
                        <li><a class="dropdown-item" href="/Trailer">Trailers</a></li>
                        <li><a class="dropdown-item" href="/TripExpense">Trip Expense</a></li>
                        <li><a class="dropdown-item" href="/Truck">Trucks</a></li>
                        <li><a class="dropdown-item" href="/truckDriver">Truck Drivers</a></li>
                        <li><a class="dropdown-item" href="/trucklog">Truck Log</a></li>
                        <li><a class="dropdown-item" href="/Vendors">Vendors</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/">Logout</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="container">

<div class="list-group">
    <div class="row">
        <div class="col-sm-4">
            <a href="/brokerCompany" class="list-group-item">Broker Companies</a>
            <a href="/brokerContracts" class="list-group-item">Broker Contracts</a>
            <a href="/brokerInfo" class="list-group-item">Broker Info</a>
            <a href="/client" class="list-group-item">Clients</a>
            <a href="/country"class="list-group-item">Countries</a>
            <a href="/dotInspection" class="list-group-item">DOT Inspections</a>
            <a href="/dropOffLocation"class="list-group-item">Drop Off Locations</a>
            <a href="/emergencyContacts" class="list-group-item">Emergency Contacts</a>
            <a href="/employee" class="list-group-item">Employees</a>
            <a href="/employeeStatus" class="list-group-item">Employee Status</a>
            <a href="/iftaSticker" class="list-group-item">IFTA Sticker</a>
            <a href="/incident" class="list-group-item">Incident</a>
        </div>
        <div class="col-sm-4">
            <a href="/incidentStatus" class="list-group-item">Incident Status</a>
            <a href="/incidentType" class="list-group-item">Incident Type</a>
            <a href="/income" class="list-group-item">Income</a>
            <a href="/insurance" class="list-group-item">Insurance</a>
            <a href="/invoice" class="list-group-item">Invoices</a>
            <a href="/invoiceStatus" class="list-group-item">Invoice Status</a>
            <a href="/loadBoard" class="list-group-item">Load Boards</a>
            <a href="/loads" class="list-group-item">Loads</a>
            <a href="/maintenance" class="list-group-item">Maintenance</a>
            <a href="/miscellaneous" class="list-group-item">Miscellaneous</a>
            <a href="/officePosition" class="list-group-item">Office Position</a>
            <a href="/payroll" class="list-group-item">Payroll</a>
        </div>
        <div class="col-sm-4">
            <a href="/puLocation" class="list-group-item">Pick Up Location</a>
            <a href="/states" class="list-group-item">States</a>
            <a href="/schedule" class="list-group-item">Schedule</a>
            <a href="/tire" class="list-group-item">Tires</a>
            <a href="/tireVendor" class="list-group-item">Tire Vendors</a>
            <a href="/Trailer" class="list-group-item">Trailers</a>
            <a href="/TripExpense" class="list-group-item">Trip Expense</a>
            <a href="/Truck" class="list-group-item">Trucks</a>
            <a href="/truckDriver" class="list-group-item">Truck Drivers</a>
            <a href="/trucklog" class="list-group-item">Truck Log</a>
            <a href="/Vendors" class="list-group-item">Vendors</a>
        </div>
    </div>

</div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
</body>
</html>