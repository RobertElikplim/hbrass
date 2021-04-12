<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hbrass</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body style="text-align: center;">
<form class="fmm" action="/back">
    <input type="submit" class="log" value="Logout">
</form>

<form class="tbm" method="post" action="/tables">
    <input type="submit" value="Table Management">
</form>

<table class="w3-table-all">
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
        <td><a href="/editBrokerCompany/${Broker_Company.getBroker_ID()}"><img src="../../img/edit.jpg" alt="edit_image" ></a></td>
        <td><a href="/deleteBrokerCompany/${Broker_Company.getBroker_ID()}"><img src="../../img/delete.jpg" alt="delete_image" ></a></td>
    </tr>
</c:forEach>
</table>
<a href="/addBrokerCompany">Add New Record</a>
</body>
</html>