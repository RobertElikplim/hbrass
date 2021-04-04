<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hbrass</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body style="text-align: center;">

<table class="w3-table-all">
    <tr>
        <th>Client ID</th>
        <th>Client Name</th>
        <th>Street Address</th>
        <th>City</th>
        <th>State Code</th>
        <th>Zip Code</th>
        <th>Phone Number</th>
        <th>Email</th>
    </tr>

    <c:forEach var = "Client" items = "${clientList}">

        <td>${Client.getClient_ID()}</td>
        <td>${Client.getClient_Name()}</td>
        <td>${Client.getStreet_Address()}</td>
        <td>${Client.getCity()}</td>
        <td>${Client.getState_Code()}</td>
        <td>${Client.getZip_Code()}</td>
        <td>${Client.getPhone_Number()}</td>
        <td>${Client.getEmail()}</td>
        <td><a href="/editClient/${Client.getClient_ID()}">Edit</a></td>
        <td><a href="/deleteClient/${Client.getClient_ID()}">Delete</a></td>
        </tr>
    </c:forEach>
</table>



</body>
</html>