<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hbrass</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body style="text-align: center;">
<form method="post" action="/submitCountry">
    <td><input type="hidden" name="colID" value="${Country.getColumn_ID()}"></td>
    <table class="w3-table-all">
        <tr>
            <td>Country Code</td>
            <td>Country </td>
        </tr>
        <tr>
            <td><input type="text" name="cc" value ="${Country.getCountry_Code()}"></td>
            <td><input type="text" name="c" value ="${Country.getCountry_Name()}"></td>
        </tr>
        <br>
    </table>
    <input type="submit" value="Submit Change">
    <br>
</form>
</body>
</html>