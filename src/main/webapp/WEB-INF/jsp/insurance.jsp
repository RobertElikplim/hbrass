<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hbrass</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style><%@include file="../css/style.css"%></style>
</head>
<body>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <h1 class="navbar-brand">In Big Wheels</h1>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="/">Logout</a></li>
            <li><a href="/tables">Table Management</a></li>
        </ul>
    </div>
</nav>
<div class="container-fluid">
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
<table class="table table-bordered">
    <tr>
        <th>Insurance ID</th>
        <th>Insurance Type</th>
        <th>Expiration</th>
        <th>Insure ID</th>
    </tr>
    <c:forEach var = "Insurance" items = "${insuranceList}">
        <tr>
            <td>${Insurance.getInsurance_ID()}</td>
            <td>${Insurance.getInsurance_Type()}</td>
            <td>${Insurance.getCoverage_Expiration()}</td>
            <td>${Insurance.getInsure_ID()}</td>
            <td><a href="/editInsurance/${Insurance.getInsure_ID()}"><img src="../../img/edit.jpg" alt="edit_image" ></a></td>
            <td><a href="/deleteInsurance/${Insurance.getInsure_ID()}"><img src="../../img/delete.jpg" alt="delete_image" ></a></td>
        </tr>
    </c:forEach>
</table>
</div>
</body>
</html>