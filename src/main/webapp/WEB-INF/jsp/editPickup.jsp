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
        <a class="navbar-brand">Pick Up Location Edit</a>
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
    <form action="/submitPickUpLocation" method="post">

        <table class="table table-bordered">
            <tr>
                <td>Pick Up Tracker Code</td>
                <td>Pick Up Date</td>
                <td>Street Address</td>
                <td>City</td>
                <td>State Code</td>
                <td>Zipcode</td>
            </tr>
            <tr>
                <td>
                    <input type="hidden" name="PickUpLocationID" value="${Pick_Up_location.getPickUpID()}">
                    <input type-="text" name="PickUpTrackerCode" value="${Pick_Up_location.getPuTrackerCode()}">
                </td>
                <td><input class="form-control" type="date" name="PickUpDate" value ="${Pick_Up_location.getPuDate()}"></td>
                <td><input class="form-control" type="text" name="StreetAddress" value ="${Pick_Up_location.getStreetAddress()}"></td>
                <td><input class="form-control" type="text" name="City" value ="${Pick_Up_location.getCity()}"></td>
                <td>
                    <select class="form-select" name="StateCode">
                        <selected option>${Pick_Up_location.getStateCode()}</selected>
                        <c:forEach var = "States" items = "${stateList}">
                            <option value="${States.getState_Code()}">${States.getState_Code()}</option>
                        </c:forEach>
                    </select>
                </td>
                <td><input class="form-control" type="text" name="Zipcode" value ="${Pick_Up_location.getZipCode()}"></td>
            </tr>
        </table>
        <input class="btn btn-primary" type="submit" value="Submit Changes">

    </form>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
</body>
</html>