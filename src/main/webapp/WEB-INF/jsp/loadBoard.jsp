<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hbrass</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"></head>
<body>

<table class="w3-table-all">
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
            <td><a href="/editLoad_Board/${Load_Board.getLoadBoardID()}"><img src="../../img/edit.jpg" alt="edit_image" ></a></td>
            <td><a href="/deleteLoad_Board/${Load_Board.getLoadBoardID()}"><img src="../../img/delete.jpg" alt="delete_image" ></a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>