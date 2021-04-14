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

<form method="post" action="/submitTrailer">
    <h3>Fields with * are required</h3>
    <input type="hidden" name="cID">
    <table>
        <tr>
            <td>Trailer ID</td>
            <td>Trailer Code</td>
            <td>Type of Trailer</td>
            <td>Weight of Trailer</td>
            <td>License Plate</td>
        </tr>
        <tr>
            <td><input type="text" name="trailerID" placeholder="*"> </td>
            <td><input type="text" name="tc" placeholder="*"> </td>
            <td><input type="text" name="tot" placeholder="*"> </td>
            <td><input type="text" name="weight" placeholder="*"> </td>
            <td><input type="text" name="lcp" placeholder="*"> </td>
        </tr>
    </table>
    <input type="submit" value="Add Entry">
    <br>
    <br>
</form>
<table class="table table-bordered">
    <tr>
        <th>Trailer ID</th>
        <th>Trailer Code</th>
        <th>Type of Trailer</th>
        <th>Weight of Trailer</th>
        <th>License Plate</th>
    </tr>
    <c:forEach var = "Trailer" items = "${trailerList}">
        <tr>
            <td>${Trailer.getTrailer_ID()}</td>
            <td>${Trailer.getTrailer_Code()}</td>
            <td>${Trailer.getType_Of_Trailer()}</td>
            <td>${Trailer.getWeight_Of_Trailer()}</td>
            <td>${Trailer.getLicense_Plate()}</td>
            <td><a href="/editTrailer/${Trailer.getColumn_ID()}"><img src="../../img/edit.jpg" alt="edit_image" ></a></td>
            <td><a href="/deleteTrailer/${Trailer.getColumn_ID()}"><img src="../../img/delete.jpg" alt="delete_image" ></a></td>
        </tr>
    </c:forEach>
</table>
</div>
</body>
</html>