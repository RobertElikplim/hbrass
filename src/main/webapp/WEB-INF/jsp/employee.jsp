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
        <th>Employee ID</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Phone Number</th>
        <th>Email</th>
        <th>Street Address</th>
        <th>City</th>
        <th>State Code</th>
        <th>Zip Code</th>
        <th>Position ID</th>
        <th>Driver ID</th>
        <th>Emergency Contact ID</th>
    </tr>
    <c:forEach var = "employee" items = "${employeeList}">
        <tr>
            <td>${employee.getEmployee_ID()}</td>
            <td>${employee.getFirst_Name()}</td>
            <td>${employee.getLast_Name()}</td>
            <td>${employee.getPhone_Number()}</td>
            <td>${employee.getEmail()}</td>
            <td>${employee.getStreet_Address()}</td>
            <td>${employee.getCity()}</td>
            <td>${employee.getState_Code()}</td>
            <td>${employee.getZip_Code()}</td>
            <td>${employee.getPosition_ID()}</td>
            <td>${employee.getDriver_ID()}</td>
            <td>${employee.getEmergency_Contact_ID()}</td>
            <td><a href="/editemployee/${employee.getEmployee_ID()}">Edit</a></td>
            <td><a href="/deleteemployee/${employee.getEmployee_ID()}">Delete</a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>