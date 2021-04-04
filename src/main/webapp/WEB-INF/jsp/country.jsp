<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hbrass</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body style="text-align: center;">
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