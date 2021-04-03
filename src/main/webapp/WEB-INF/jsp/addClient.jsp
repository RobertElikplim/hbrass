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
        <th>Client ID</th>
        <th>Client Name</th>
        <th>Street Address</th>
        <th>City</th>
        <th>State Code</th>
        <th>Zip Code</th>
        <th>Phone Number</th>
        <th>Email</th>
    </tr>
    <form method="post" action="/submitClient">
        <td><input type="text" name="clientID" value="${Client.getClient_ID()}"></td>
        <td><input type="text" name="clientName" value="${Client.getClient_Name()}"></td>
        <td><input type="text" name="streetAddress" value="${Client.getCity()}"></td>
        <td><input type="text" name="city" value="${Client.getCity()}"></td>
        <td><input type="text" name="stateCode" value="${Client.getState_Code()}"></td>
        <td><input type="text" name="zipCode" value="${Client.getZip_Code()}"></td>
        <td><input type="text" name="phoneNumber" value="${Client.getPhone_Number()}"></td>
        <td><input type="text" name="email" value="${Client.getEmail()}"></td>
        </tr>
</table>
<input type="submit" value="Submit Changes">
</form>

<table>
    <tr>
        <th>Broker ID</th>
        <th>Broker Name</th>

    </tr>
    <tr>
        <c:forEach var = "Broker_Company" items = "${brokerCompanyList}">
        <td>${Broker_Company.getBroker_ID()}</td>
        <td>${Broker_Company.getBroker_Name()}</td>

    </tr>
    </c:forEach>



</body>
</html>