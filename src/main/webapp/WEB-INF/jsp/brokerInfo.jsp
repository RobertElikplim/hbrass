<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hbrass</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

</head>
< <body style="text-align: center;">
>

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
        <c:forEach var = "Broker_Info" items = "${brokerInfoList}">
            <tr>
                <td>${Broker_Info.getContact_ID()}</td>
                <td>${Broker_Info.getFirstName()}</td>
                <td>${Broker_Info.getLastName()}</td>
                <td>${Broker_Info.getEmail()}</td>
                <td>${Broker_Info.getPhoneNumber()}</td>
                <td>${Broker_Info.getBrokerID()}</td>
                <td><a href="/editBrokerInfo/${Broker_Info.getContact_ID()}"><img src="../../img/edit.jpg" alt="edit_image" ></a></td>
                <td><a href="/deleteBrokerInfo/${Broker_Info.getContact_ID()}"><img src="../../img/delete.jpg" alt="delete_image" ></a></td>
            </tr>
    </c:forEach>
</table>
<a href="/addBrokerInfo">Add New Record</a>
</body>
</html>