<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hbrass</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"></head>
<body>
<form class="fmm" action="/back">
    <input type="submit" class="log" value="Logout">
</form>

<form class="tbm" method="post" action="/tables">
    <input type="submit" value="Table Management">
</form>
<form method="post" action="/submitTire">
    <h3>Fields with * are required</h3>
    <input type="hidden" name="tireID">
    <table>
        <tr>
            <td>Tire Company Name</td>
        </tr>
        <tr>
            <td><input type="text" name="tire" placeholder="*"> </td>
        </tr>
    </table>
    <input type="submit" value="Add Entry">
    <br>
    <br>
</form>
<table class="w3-table-all">
    <tr>
        <th>Tire Vendor ID</th>
        <th>Tire Company Name</th>
    </tr>
    <c:forEach var = "Tire" items = "${tireList}">
        <tr>
            <td>${Tire.getTire_ID()}</td>
            <td>${Tire.getTire_Name()}</td>
            <td><a href="/editTire/${Tire.getTire_ID()}"><img src="../../img/edit.jpg" alt="edit_image" ></a></td>
            <td><a href="/deleteTire/${Tire.getTire_ID()}"><img src="../../img/delete.jpg" alt="delete_image" ></a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>