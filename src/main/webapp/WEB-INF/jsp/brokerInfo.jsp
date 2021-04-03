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
        <th>Contact ID</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Email</th>
        <th>Phone Number</th>
        <th>Broker ID</th>
        <th></th><th></th>
    </tr>

    <tr>
        <c:forEach var = "Broker_Info" items = "${brokerInfoList}">

        <td>${Broker_Info.getContact_ID()}</td>
            <td>${Broker_Info.getFirstName()}</td>
            <td>${Broker_Info.getLastName()}</td>
            <td>${Broker_Info.getEmail()}</td>
            <td>${Broker_Info.getPhoneNumber()}</td>
            <td>${Broker_Info.getBrokerID()}</td>
        <td><a href="/editBrokerInfo/${Broker_Info.getContact_ID()}">Edit</a></td>
        <td><a href="/deleteBrokerInfo/${Broker_Info.getContact_ID()}">Delete</a></td>

    </tr>
    </c:forEach>
</table>
<a href="/addBrokerInfo">Add New Record</a>
</body>
</html>