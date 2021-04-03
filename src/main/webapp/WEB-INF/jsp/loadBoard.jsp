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
        <th>Tire Vendor ID</th>
        <th>Username</th>
        <th>Privileges</th>
        <th>Password</th>
    </tr>
    <c:forEach var = "System_Login" items = "${systemLoginList}">
        <tr>
            <td>${System_Login.getLoginID()}</td>
            <td>${System_Login.getUsername()}</td>
            <td>${System_Login.getPrivileges()}</td>
            <td>${System_Login.getPassword()}</td>
            <td><a href="/editSystem_Login/${System_Login.getLoginID()}">Edit</a></td>
            <td><a href="/deleteSystem_Login/${System_Login.getLoginID()}">Delete</a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>