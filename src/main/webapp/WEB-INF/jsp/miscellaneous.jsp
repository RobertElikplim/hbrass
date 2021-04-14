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
<form method="post" action="/submitMisc">
    <h3>Fields with * are required</h3>
    <input type="hidden" name="miscID">
    <table>
        <tr>
            <td>Cost</td>
            <td>Description</td>
        </tr>
        <tr>
            <td><input type="text" name="cost" placeholder="*"> </td>
            <td><input type="text" name="desc" placeholder="*"></td>
        </tr>
    </table>
    <input type="submit" value="Add Entry">
    <br>
    <br>
</form>
<table class="table table-bordered">
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
            <td><a href="/editMiscellaneous/${Miscellaneous.getMiscellaneous_ID()}"><img src="../../img/edit.jpg" alt="edit_image" ></a></td>
            <td><a href="/deleteMiscellaneous/${Miscellaneous.getMiscellaneous_ID()}"><img src="../../img/delete.jpg" alt="delete_image" ></a></td>
        </tr>
    </c:forEach>
</table>
</div>
</body>
</html>