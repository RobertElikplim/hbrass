<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hbrass</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
<form method="post" action="/tables">
    <input type="submit" value="Table Management">
</form>
<form method="post" action="/submitInsuranceTable">
    <h3>Fields with * are required</h3>
    <input type="hidden" name="insureID">
    <table>
        <tr>
            <td>Insurance ID</td>
            <td>Insurance Type</td>
            <td>Coverage Expiration</td>
        </tr>
        <tr>
            <td><input type="text" name="insuranceID" placeholder="*"> </td>
            <td><input type="text" name="insuranceType" placeholder="*"></td>
            <td><input type="date" name="coverageExpiration" placeholder="*"></td>
        </tr>
    </table>
    <input type="submit" value="Add Entry">
    <br>
    <br>
</form>
<table class="w3-table-all">
    <tr>
        <th>Insurance ID</th>
        <th>Insurance Type</th>
        <th>Expiration</th>
        <th>Insure_ID</th>
    </tr>
    <c:forEach var = "Insurance" items = "${insuranceList}">
        <tr>
            <td>${Insurance.getInsurance_ID()}</td>
            <td>${Insurance.getInsurance_Type()}</td>
            <td>${Insurance.getCoverage_Expiration()}</td>
            <td>${Insurance.getInsure_ID}</td>
            <td><a href="/editInsurance/${Insurance.getInsurance_ID()}"><img src="../../img/edit.jpg" alt="edit_image" ></a></td>
            <td><a href="/deleteInsurance/${Insurance.getInsurance_ID()}"><img src="../../img/delete.jpg" alt="delete_image" ></a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>