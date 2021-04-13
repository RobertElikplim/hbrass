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
<body style="text-align: left;">

<form class="fmm" action="/back">
    <input type="submit" class="log" value="Logout">
</form>

<h1>Table Management</h1>
<ol>
    <li><a href="/brokerInfo">Broker Info</a></li>
    <li><a href="/dotInspection">DOT Inspections</a></li>
    <li><a href="/dropOffLocation">Drop Off Locations</a></li>
    <li><a href="/emergencyContacts">Emergency Contacts</a></li>
    <li><a href="/iftaSticker">IFTA Sticker</a></li>
    <li><a href="/incident">Incident</a></li>
    <li><a href="/incidentStatus">Incident Status</a></li>
    <li><a href="/incidentType">Incident Type</a></li>
    <li><a href="/invoice">Invoices</a></li>
    <li><a href="/invoiceStatus">Invoice Status</a></li>
    <li><a href="/loadBoard">Load Boards</a></li>
    <li><a href="/loads">Loads</a></li>
    <li><a href="/maintenance">Maintenance</a></li>
    <li><a href="/puLocation">Pick Up Location</a></li>
    <li><a href="/tire">Tires</a></li>
    <li><a href="/tireVendor">Tire Vendors</a></li>
    <li><a href="/Trailer">Trailers</a></li>
    <li><a href="/Truck">Trucks</a></li>
    <li><a href="/truckDriver">Truck Drivers</a></li>
    <li><a href="/trucklog">Truck Log</a></li>
    <li><a href="/Vendors">Vendors</a></li>
</ol>
</body>
</html>