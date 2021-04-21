
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hbrass</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
    <style><%@include file="../css/style.css"%></style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand">Load Board Edit</a>
        <div class="navbar-right" id="navbarSupportedContent">
            <ul class="navbar-nav navbar-right">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/tables">Table Management</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/">Logout</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="container-fluid">
    <form action="/submitLoadBoard" method="post">
        <table class="table table-bordered">
            <tr>
                <th>Board Name</th>
                <th>Website</th>
                <th>Subscribed</th>
            </tr>
            <tr>
                <td>
                    <input type="hidden" name="loadBoardID" value="${Load_Board.getLoadBoardID()}">
                    <input class="form-control" type="text" name="boardName" value ="${Load_Board.getBoardName()}">
                </td>
                <td><input class="form-control" type="text" name="website" value ="${Load_Board.getWebsite()}"></td>
                <td> <select class="form-select" name="subscribed">
                    <option selected>${Load_Board.getSubscribed()}<option>
                    <option value="Yes">Yes</option>
                    <option value="No">No</option>
                </select>
            </tr>
        </table>
        <input class="btn btn-primary" type="submit" value="Submit Changes">
    </form>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
</body>
</html>
