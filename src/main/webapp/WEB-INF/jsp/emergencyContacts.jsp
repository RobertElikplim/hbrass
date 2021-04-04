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
            <td><a href="/editEmergency_Contact/${Emergency_Contact.getEmergency_Contact_ID()}">Edit</a></td>
            <td><a href="/deleteEmergency_Contact/${Emergency_Contact.getEmergency_Contact_ID()}">Delete</a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>