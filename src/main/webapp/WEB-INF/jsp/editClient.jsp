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
        <a class="navbar-brand">Client Edit</a>
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

    <table class="table table-bordered">
    <tr>
        <th>Client ID</th>
        <th>Client Name</th>
        <th>Street Address</th>
        <th>City</th>
        <th>State Code</th>
        <th>Zip Code</th>
        <th>Phone Number</th>
        <th>Email</th>
    </tr>
    <form method="post" action="/submitClient">
        <tr>
        <td><input class="form-control" type="text" name="clientID" value="${Client.getClient_ID()}"></td>
        <td><input class="form-control" type="text" name="clientName" value="${Client.getClient_Name()}"></td>
        <td><input class="form-control" type="text" name="streetAddress" value="${Client.getCity()}"></td>
        <td><input class="form-control" type="text" name="city" value="${Client.getCity()}"></td>
        <td><select class="form-select" name="stateCode">
            <c:forEach var = "States" items = "${stateList}">
                <option value="${States.getState_Code()}">${States.getState_Name()}</option>
            </c:forEach>
        </select></td>
        <td><input class="form-control" type="text" name="zipCode" value="${Client.getZip_Code()}"></td>
        <td><input class="form-control" type="text" name="phoneNumber" value="${Client.getPhone_Number()}"></td>
        <td><input class="form-control" type="text" name="email" value="${Client.getEmail()}"></td>
        </tr>
</table>
<input class="btn btn-primary" type="submit" value="Submit Changes">
</form>
</div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>


</body>
</html>