<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hbrass</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <%--<style><%@include file="../css/style.css"%></style>--%>
</head>
<body>
<form method="post" action="/submitDotInspection">
    <h3>Fields with * are required</h3>
    <input type="hidden" name="dotInspectionID">
    <table>
        <tr>
            <td>VIN</td>
            <td>Certification Date</td>
            <td>Expiration Date</td>
        </tr>
        <tr>
            <td><input type="text" name="vin" value="*"></td>
            <td><input type="date" name="cDate" value="*"></td>
            <td><input type="date" name="eDate" value="*"></td>
        </tr>
    </table>
    <input type="submit" value="Submit Changes">
    <br>
    <br>
</form>
<table class="w3-table-all">
    <tr>
        <th>Dot Inspection ID</th>
        <th>VIN</th>
        <th>Certification Date</th>
        <th>Expiration Date</th>
    </tr>
    <c:forEach var = "Dot_Inspection" items = "${dotInspectionList}">
        <tr>
            <td>${Dot_Inspection.getDot_Inspection_ID()}</td>
            <td>${Dot_Inspection.getTruck_ID_VIN()}</td>
            <td>${Dot_Inspection.getDot_Certification_Date()}</td>
            <td>${Dot_Inspection.getDot_Expiration_Date()}</td>
            <td><a href="/editDot_Inspection/${Dot_Inspection.getDot_Inspection_ID()}"><img src="../../img/edit.jpg" alt="edit_image" ></a></td>
            <td><a href="/deleteDot_Inspection/${Dot_Inspection.getDot_Inspection_ID()}"><img src="../../img/delete.jpg" alt="delete_image" ></a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>