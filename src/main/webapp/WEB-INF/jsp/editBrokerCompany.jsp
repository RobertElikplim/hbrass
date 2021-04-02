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

    <form method="post" action="/submitBrokerCompany">
        <td><input type="text" name="brokerID" value="${Broker_Company.getBroker_ID()}"></td>
        <td><input type="text" name="brokerName" value="${Broker_Company.getBroker_Name()}"></td>
        <td><input type="text" name="streetAddress" value="${Broker_Company.getStreet_Address()}"></td>
        <td><input type="text" name="stateCode" value="${Broker_Company.getState_Code()}"></td>
        <td><input type="text" name="zipCode" value="${Broker_Company.getZip_Code()}"></td>
        <td><input type="text" name="phoneNumber" value="${Broker_Company.getPhone_Number()}"></td>
        <td><input type="text" name="email" value="${Broker_Company.getEmail_Address()}"></td>
        </tr>
    </table>
                <input type="submit" value="Submit Changes">
    </form>



</body>
</html>