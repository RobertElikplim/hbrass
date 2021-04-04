<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hbrass</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <%--<style><%@include file="../css/style.css"%></style>--%>
</head>
<body>

<table class="w3-table-all">
    <tr>
        <th>State Code</th>
        <th>State Name</th>
    </tr>
    <c:forEach var = "States" items = "${statesList}">
        <tr>
            <td>${States.getState_Code()}</td>
            <td>${States.getState_Name()}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>