<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hbrass</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <style><%@include file="../css/style.css"%></style>
</head>
<body>
<form class="fmm" action="/back">
    <input type="submit" class="log" value="Logout">
</form>

<form class="tbm" method="post" action="/tables">
    <input type="submit" value="Table Management">
</form>
<form method="post" action="/addEmployee">
    <input type="hidden" name="empID">
    <table>
        <tr>
            <td>First Name</td>
            <td>Last Name</td>
            <td>Phone Number</td>
            <td>Email</td>
            <td>Street Address</td>
        </tr>
        <tr>
            <td><input type="text" name="fName"></td>
            <td><input type="text" name="lName"></td>
            <td><input type="text" name="pNumber"></td>
            <td><input type="text" name="eMail"></td>
            <td><input type="text" name="sAddy"></td>
        </tr>
        <tr>
            <td>City</td>
            <td>State Code</td>
            <td>Zip Code</td>
            <td>Position ID</td>
            <td>Driver ID</td>
            <td>Emergency Contact ID</td>
        </tr>
        <tr>
            <td><input type="text" name="city"></td>
            <td><input type="text" name="sCode"></td>
            <td><input type="text" name="zCode"></td>
            <td><input type="text" name="posID"></td>
            <td><input type="text" name="driverID"></td>
            <td><input type="text" name="eCon"></td>
        </tr>
    </table>
    <input type="submit" value="Add Employee">

</form>
<table class="w3-table-all">
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
            <td><a href="/editEmployee/${employee.getEmployee_ID()}"><img src="../../img/edit.jpg" alt="edit_image" ></a></td>
            <td><a href="/deleteEmployee/${employee.getEmployee_ID()}"><img src="../../img/delete.jpg" alt="delete_image" ></a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>