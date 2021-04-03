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
        <th>Miscellaneous ID</th>
        <th>Cost</th>
        <th>Description</th>
    </tr>
    <c:forEach var = "Miscellaneous" items = "${miscellaneousList}">
        <tr>
            <td>${Miscellaneous.getMiscellaneous_ID()}</td>
            <td>${Miscellaneous.getCost()}</td>
            <td>${Miscellaneous.getDescription()}</td>
            <td><a href="/editSystem_Login/${Miscellaneous.getMiscellaneous_ID()}">Edit</a></td>
            <td><a href="/deleteSystem_Login/${Miscellaneous.getMiscellaneous_ID()}">Delete</a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>