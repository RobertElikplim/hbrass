<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hbrass</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <%--<style><%@include file="../css/style.css"%></style>--%>
</head>
<body>
<form class="fmm" action="/back">
    <input type="submit" class="log" value="Logout">
</form>

<form class="tbm" method="post" action="/tables">
    <input type="submit" value="Table Management">
</form>

<form method="post" action="/submitDOL">
    <h3>Fields with * are required</h3>
    <input type="hidden" name="dropOffID">
    <table>
        <tr>
            <td>Drop Off Tracker Code</td>
            <td>Drop Off Date</td>
            <td>Street Address</td>
            <td>City</td>
            <td>State Code</td>
            <td>Zip Code</td>
        </tr>
        <tr>
            <td><input type="text" name="tCode" placeholder="*"> </td>
            <td><input type="date" name="dDate" placeholder="*"></td>
            <td><input type="text" name="sAddy" placeholder="*"></td>
            <td><input type="text" name="dCity"></td>
            <td><input type="text" name="sCode" placeholder="*"></td>
            <td><input type="text" name="zCode"></td>
        </tr>
    </table>
    <input type="submit" value="Add Entry">
    <br>
    <br>
</form>
<table class="w3-table-all">
    <tr>
        <th>Drop Off ID</th>
        <th>Drop Off Tracker Code</th>
        <th>Drop Off Date</th>
        <th>Street Address</th>
        <th>City</th>
        <th>State Code</th>
        <th>Zip Code</th>
    </tr>
    <c:forEach var = "Drop_Off_Location" items = "${dropOffLocationList}">
        <tr>
            <td>${Drop_Off_Location.getDrop_Off_ID()}</td>
            <td>${Drop_Off_Location.getDrop_Off_Tracker_Code()}</td>
            <td>${Drop_Off_Location.getDrop_Off_Date()}</td>
            <td>${Drop_Off_Location.getStreet_Address()}</td>
            <td>${Drop_Off_Location.getCity()}</td>
            <td>${Drop_Off_Location.getState_Code()}</td>
            <td>${Drop_Off_Location.getZip_Code()}</td>
            <td><a href="/editDrop_Off_Location/${Drop_Off_Location.getDrop_Off_ID()}"><img src="../../img/edit.jpg" alt="edit_image" ></a></td>
            <td><a href="/deleteDrop_Off_Location/${Drop_Off_Location.getDrop_Off_ID()}"><img src="../../img/delete.jpg" alt="delete_image" ></a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>