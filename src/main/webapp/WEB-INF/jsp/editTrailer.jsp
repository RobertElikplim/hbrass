<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hbrass</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body style="text-align: center;">
<form method="post" action="/submitTrailer">
    <td><input type="hidden" name="cID" value="${Trailer.getColumn_ID()}"></td>
    <table class="w3-table-all">
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
</body>
</html>