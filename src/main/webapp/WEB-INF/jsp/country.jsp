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