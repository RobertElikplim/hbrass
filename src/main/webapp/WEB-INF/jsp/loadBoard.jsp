<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hbrass</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style><%@include file="../css/style.css"%></style>
</head>
<body>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <h1 class="navbar-brand">In Big Wheels</h1>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="/">Logout</a></li>
            <li><a href="/tables">Table Management</a></li>
        </ul>
    </div>
</nav>
<div class="container-fluid">
<table class="table table-bordered">
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
</div>
</body>
</html>