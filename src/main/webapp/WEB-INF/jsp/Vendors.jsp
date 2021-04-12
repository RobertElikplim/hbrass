<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hbrass</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <style><%@include file="../css/style.css"%></style>
</head>
<body>
<form class="fmm" action="/back">
    <input type="submit" class="log" value="Logout">
</form>

<form class="tbm" method="post" action="/tables">
    <input type="submit" value="Table Management">
</form>

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
<table class="w3-table-all">
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



</body>
</html>