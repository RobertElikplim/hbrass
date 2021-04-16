<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
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
        <a class="navbar-brand">Trailer Edit</a>
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
<form method="post" action="/submitTrailer">
    <td><input type="hidden" name="cID" value="${Trailer.getColumn_ID()}"></td>
    <table class="table table-bordered">
        <tr>
            <td>Trailer ID</td>
            <td>Trailer Code</td>
            <td>Type of Trailer</td>
            <td>Weight of Trailer</td>
            <td>License Plate</td>
        </tr>
        <tr>
            <td><input type="text" name="trailerID" value ="${Trailer.getTrailer_ID()}"></td>
            <td><input type="text" name="tc" value ="${Trailer.getTrailer_Code()}"></td>
            <td><input type="text" name="tot" value ="${Trailer.getType_Of_Trailer()}"></td>
            <td><input type="text" name="weight" value ="${Trailer.getWeight_Of_Trailer()}"></td>
            <td><input type="text" name="lcp" value ="${Trailer.getLicense_Plate()}"></td>
        </tr>
        <br>
    </table>
    <input type="submit" value="Submit Change">
    <br>
</form>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>

</body>
</html>