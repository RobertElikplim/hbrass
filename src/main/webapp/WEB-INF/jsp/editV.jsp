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
        <a class="navbar-brand">Vendor Edit</a>
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
<form method="post" action="/addVendors">
    <td><input type="hidden" name="vendorID" value="${Vendor.getVendor_ID()}"></td>
    <table class="table table-bordered">
        <tr>
            <td>Vendor Name</td>
            <td>Phone Number</td>
            <td>Street Address</td>
            <td>City</td>
            <td>State Code</td>
            <td>Zip Code</td>
            <td>Email</td>
            <td>Vendor Tracker</td>
        </tr>
        <tr>
            <td><input type="text" name="nameVendor" value ="${Vendor.getVendor_Name()}"></td>
            <td><input type="text" name="vendorPhoneNumber" value ="${Vendor.getPhone_Number()}"></td>
            <td><input type="text" name="vendorStreetAddress" value ="${Vendor.getStreet_Address()}"></td>
            <td><input type="text" name="vendorCity" value ="${Vendor.getCity()}"></td>
            <td><input type="text" name="vendorStateCode" value ="${Vendor.getState_Code()}"></td>
            <td><input type="text" name="vendorZipCode" value ="${Vendor.getZip_Code()}"></td>
            <td><input type="text" name="vendorEmail" value ="${Vendor.getEmail()}"></td>
            <td><input type="text" name="vendorTracker" value ="${Vendor.getVendor_Tracker()}"></td>
        </tr>
        <br>
    </table>
    <input type="submit" value="Submit Changes">
    <br>
</form>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>

</body>
</html>