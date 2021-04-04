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
        <th>Miscellaneous ID</th>
        <th>Cost</th>
        <th>Description</th>
    </tr>
    <c:forEach var = "Miscellaneous" items = "${miscellaneousList}">
        <tr>
            <td>${Miscellaneous.getMiscellaneous_ID()}</td>
            <td>${Miscellaneous.getCost()}</td>
            <td>${Miscellaneous.getDescription()}</td>
            <td><a href="/editMiscellaneous/${Miscellaneous.getMiscellaneous_ID()}"><img src="../../img/edit.jpg" alt="edit_image" ></a></td>
            <td><a href="/deleteMiscellaneous/${Miscellaneous.getMiscellaneous_ID()}"><img src="../../img/delete.jpg" alt="delete_image" ></a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>