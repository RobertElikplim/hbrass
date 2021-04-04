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
        <th>Insurance ID</th>
        <th>Insurance Type</th>
        <th>Expiration</th>
    </tr>
    <c:forEach var = "Insurance" items = "${insuranceList}">
        <tr>
            <td>${Insurance.getInsurance_ID()}</td>
            <td>${Insurance.getInsurance_Type()}</td>
            <td>${Insurance.getCoverage_Expiration()}</td>
            <td><a href="/editInsurance/${Insurance.getInsurance_ID()}"><img src="../../img/edit.jpg" alt="edit_image" ></a></td>
            <td><a href="/deleteInsurance/${Insurance.getInsurance_ID()}"><img src="../../img/delete.jpg" alt="delete_image" ></a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>