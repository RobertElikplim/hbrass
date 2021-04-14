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
            <li><a href="/tables">Table Management</a></li>
            <li><a href="/">Logout</a></li>
        </ul>
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
</body>
</html>