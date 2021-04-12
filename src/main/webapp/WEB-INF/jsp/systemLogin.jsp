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

<table class="w3-table-all">
    <tr>
        <th>Login ID</th>
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
            <td><a href="/editSystem_Login/${System_Login.getLoginID()}"><img src="../../img/edit.jpg" alt="edit_image" ></a></td>
            <td><a href="/deleteSystem_Login/${System_Login.getLoginID()}"><img src="../../img/delete.jpg" alt="delete_image" ></a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>