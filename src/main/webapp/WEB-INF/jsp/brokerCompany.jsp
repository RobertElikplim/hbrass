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
        <th></th><th></th>
    </tr>
<c:forEach var = "Broker_Company" items = "${brokerCompanyList}">
    <tr>
        <td>${Broker_Company.getBroker_ID()}</td>
        <td>${Broker_Company.getBroker_Name()}</td>
        <td>${Broker_Company.getStreet_Address()}</td>
        <td>${Broker_Company.getState_Code()}</td>
        <td>${Broker_Company.getZip_Code()}</td>
        <td>${Broker_Company.getPhone_Number()}</td>
        <td>${Broker_Company.getEmail_Address()}</td>
        <td><a href="/editBrokerCompany/${Broker_Company.getBroker_ID()}">Edit</a></td>
        <td><a href="/deleteBrokerCompany/${Broker_Company.getBroker_ID()}">Delete</a></td>
    </tr>
</c:forEach>
</table>
<a href="/addBrokerCompany">Add New Record</a>
</body>
</html>