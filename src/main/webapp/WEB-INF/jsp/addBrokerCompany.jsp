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
        <th>Broker ID</th>
        <th>Broker Name</th>
        <th>Street Address</th>
        <th>State Code</th>
        <th>Zip Code</th>
        <th>Phone Number</th>
        <th>Email Address</th>
    </tr>
    <h3>Fields with * are required</h3>
    <form method="post" action="/submitBrokerCompany">
        <input type="hidden" name="brokerID">
        <td>Auto Generated</td>
        <td><input type="text" name="brokerName" value="*"></td>
        <td><input type="text" name="streetAddress" value="*"></td>
        <td><input type="text" name="stateCode" value="*"></td>
        <td><input type="text" name="zipCode" value="*"></td>
        <td><input type="text" name="phoneNumber" value="*"></td>
        <td><input type="text" name="email"></td>
        </tr>
</table>
<input type="submit" value="Submit Changes">
</form>

</body>
</html>