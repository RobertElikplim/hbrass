<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hbrass</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body style="text-align: center;">
<form method="post" action="/tables">
    <input type="submit" value="Table Management">
</form>
<form method="post" action="/submitCountry">
    <h3>Fields with * are required</h3>
        <input type="hidden" name="colID">
    <table>
        <tr>
            <td>Country Code</td>
            <td>Country </td>
        </tr>
        <tr>
            <td><input type="text" name="cc"></td>
            <td><input type="text" name="c" placeholder="*"> </td>
        </tr>
    </table>
    <input type="submit" value="Add Entry">
    <br>
    <br>
</form>
<table class="w3-table-all">
    <tr>
        <th>Country Code</th>
        <th>Country</th>
    </tr>
    <tr>
        <c:forEach var = "Country" items = "${countryList}">
        <td>${Country.getCountry_Code()}</td>
        <td>${Country.getCountry_Name()}</td>
    </tr>
    </c:forEach>
</table>



</body>
</html>