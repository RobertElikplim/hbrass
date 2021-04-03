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