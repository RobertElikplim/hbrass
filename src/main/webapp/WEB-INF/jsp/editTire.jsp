<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hbrass</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
    <style><%@include file="../css/style.css"%></style>

</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand">Tire Edit</a>
        <div class="navbar-right" id="navbarSupportedContent">
            <ul class="navbar-nav navbar-right">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/tables">Table Management</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/">Logout</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="container-fluid">

<form method="post" action="/submitTire">
    <td><input type="hidden" name="tireID" value="${Tire.getTire_ID()}"></td>
    <table class="table table-bordered">
        <tr>
            <td>Tire Company Name</td>
            <td>Vendor ID</td>
        </tr>
        <tr>
            <td><input type="text" class="form-control" name="tire" value ="${Tire.getTire_Name()}"></td>
            <td> <select class="form-select" name="vendorID">
                <selected option value="${Tire.getVendor_ID()}">${Tire.getVendor_ID()}</selected>
                <c:forEach var = "Vendor" items = "${vendorList}">
                    <option value="${Vendor.getVendor_ID()}">${Vendor.getVendor_ID()}-${Vendor.getVendor_Name()}</option>
                </c:forEach>
            </select></td>
        </tr>

    </table>
    <input type="submit" class="btn btn-primary" value="Submit Change">
    <br>
</form>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>

</body>
</html>