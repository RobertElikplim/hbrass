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
        <th>Contact ID</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Email</th>
        <th>Phone Number</th>
        <th>Broker ID</th>
        <th></th><th></th>
    </tr>

    <tr>
        <form method="post" action="/submitBrokerInfo">
        <td><input type="text" name="contactID" value="${Broker_Info.getContact_ID()}"></td>
        <td><input type="text" name="firstName" value="${Broker_Info.getFirstName()}"></td>
        <td><input type="text" name="lastName" value ="${Broker_Info.getLastName()}"></td>
        <td><input type="text" name="email" value ="${Broker_Info.getEmail()}"></td>
        <td><input type="text" name="phoneNumber" value ="${Broker_Info.getPhoneNumber()}"></td>
        <td><input type="text" name="brokerID" value ="${Broker_Info.getBrokerID()}"></td>
    </tr>
</table>
<input type="submit" value="Submit Changes">
</form>

</body>
</html>