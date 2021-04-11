<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hbrass</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"></head>
<body>
<form method="post" action="/tables">
    <input type="submit" value="Table Management">
</form>
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
<table class="w3-table-all">
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
            <td><a href="/editTrailer/${Trailer.getTrailer_ID()}"><img src="../../img/edit.jpg" alt="edit_image" ></a></td>
            <td><a href="/deleteTrailer/${Trailer.getTrailer_ID()}"><img src="../../img/delete.jpg" alt="delete_image" ></a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>