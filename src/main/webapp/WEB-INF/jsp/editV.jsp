<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hbrass</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body style="text-align: center;">
<form method="post" action="/addVendors">
    <td><input type="hidden" name="vendorID" value="${Vendor.getVendor_ID()}"></td>
    <table class="w3-table-all">
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
</body>
</html>