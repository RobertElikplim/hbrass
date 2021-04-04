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