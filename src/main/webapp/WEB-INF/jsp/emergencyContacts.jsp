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

<form method="post" action="/submitEmergencyContact">
    <h3>Fields with * are required</h3>
    <input type="hidden" name="EmergencyContactID">
    <table>
        <tr>
            <td>First Name</td>
            <td>Last Name</td>
            <td>Relationship</td>
            <td>Phone Number</td>
            <td>Street Address</td>
        </tr>
        <tr>
          <td><input type="text" name="FirstName" placeholder =  "*" > </td>
            <td><input type="text" name="LastName" placeholder =  "*"> </td>
            <td><input type="text" name="Relationship" placeholder =  "*" > </td>
            <td><input type="text" name="PhoneNumber" placeholder =  "*"> </td>
            <td><input type="text" name="StreetAddress" placeholder =  "*" ></td>
        </tr>
    </table>
    <input type="submit" value="Add Entry">
    <br>
    <br>
</form>
<table class="w3-table-all">
    <tr>
        <th>Emergency Contact ID</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Relationship</th>
        <th>Phone Number</th>
        <th>Street Address</th>
    </tr>
    <c:forEach var = "Emergency_Contact" items = "${emergencyContactsList}">
        <tr>
            <td>${Emergency_Contact.getEmergency_Contact_ID()}</td>
            <td>${Emergency_Contact.getFirst_Name()}</td>
            <td>${Emergency_Contact.getLast_Name()}</td>
            <td>${Emergency_Contact.getRelationship()}</td>
            <td>${Emergency_Contact.getPhone_Number()}</td>
            <td>${Emergency_Contact.getStreet_Address()}</td>
            <td><a href="/editEmergency_Contact/${Emergency_Contact.getEmergency_Contact_ID()}"><img src="../../img/edit.jpg" alt="edit_image" ></a></td>
            <td><a href="/deleteEmergency_Contact/${Emergency_Contact.getEmergency_Contact_ID()}"><img src="../../img/delete.jpg" alt="delete_image" ></a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>