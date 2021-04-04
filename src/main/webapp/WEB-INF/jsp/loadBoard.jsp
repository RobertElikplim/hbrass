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
        <th>Load Board ID</th>
        <th>Board Name</th>
        <th>Website</th>
        <th>Subscribed</th>
    </tr>
    <c:forEach var = "Load_Board" items = "${loadBoardList}">
        <tr>
            <td>${Load_Board.getLoadBoardID()}</td>
            <td>${Load_Board.getBoardName()}</td>
            <td>${Load_Board.getWebsite()}</td>
            <td>${Load_Board.getSubscribed()}</td>
            <td><a href="/editLoad_Board/${Load_Board.getLoadBoardID()}">Edit</a></td>
            <td><a href="/deleteLoad_Board/${Load_Board.getLoadBoardID()}">Delete</a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>