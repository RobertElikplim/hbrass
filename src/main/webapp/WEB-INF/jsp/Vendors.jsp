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

<form method="post" action="/addVendors">
    <input type="hidden" name="vendorID">
    <table>
        <tr>
            <td>Vendor Name</td>
            <td>Phone Number</td>
            <td>Street Address</td>
            <td>City</td>
        </tr>
        <tr>
            <td><input type="text" name="nameVendor"></td>
            <td><input type="text" name="vendorPhoneNumber"></td>
            <td><input type="text" name="vendorStreetAddress"></td>
            <td><input type="text" name="vendorCity"></td>
        </tr>
        <tr>
            <td>State Code</td>
            <td>Zip Code</td>
            <td>Email</td>
            <td>Vendor Tracker</td>
        </tr>
        <tr>
            <td><input type="text" name="vendorStateCode"></td>
            <td><input type="text" name="vendorZipCode"></td>
            <td><input type="text" name="vendorEmail"></td>
            <td><input type="text" name="vendorTracker"></td>
        </tr>
    </table>
    <input type="submit" value="Add Vendor">

</form>
<table class="table table-bordered">
    <tr>
        <th>Vendor ID</th>
        <th>Vendor Name</th>
        <th>Phone Number</th>
        <th>Street Address</th>
        <th>City</th>
        <th>State Code</th>
        <th>Zip Code</th>
        <th>Email</th>
        <th>Vendor Tracker</th>
    </tr>

    <c:forEach var = "Vendor" items = "${vendorList}">
        <tr>
            <td>${Vendor.getVendor_ID()}</td>
            <td>${Vendor.getVendor_Name()}</td>
            <td>${Vendor.getPhone_Number()}</td>
            <td>${Vendor.getStreet_Address()}</td>
            <td>${Vendor.getCity()}</td>
            <td>${Vendor.getState_Code()}</td>
            <td>${Vendor.getZip_Code()}</td>
            <td>${Vendor.getEmail()}</td>
            <td>${Vendor.getVendor_Tracker()}</td>
            <td><a href="/editVendor/${Vendor.getVendor_ID()}"><img src="../../img/edit.jpg" alt="edit_image" ></a></td>
            <td><a href="/deleteVendor/${Vendor.getVendor_ID()}"><img src="../../img/delete.jpg" alt="delete_image" ></a></td>
        </tr>
    </c:forEach>
</table>
</div>

</body>
</html>