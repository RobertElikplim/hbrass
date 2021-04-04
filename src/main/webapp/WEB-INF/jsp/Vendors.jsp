<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hbrass</title>
    <style><%@include file="../css/style.css"%></style>
</head>
<body>

<table>
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
            <td><a href="/editVendor/${Vendor.getVendor_ID()}">Edit</a></td>
            <td><a href="/deleteVendor/${Vendor.getVendor_ID()}">Delete</a></td>
        </tr>
    </c:forEach>
</table>



</body>
</html>