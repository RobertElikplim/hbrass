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
        <a class="navbar-brand">In Big Wheels</a>
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
            <td>Drop Off Tracker Code</td>
            <td>Drop Off Date</td>
            <td>Street Address</td>
            <td>City</td>
            <td>State Code</td>
            <td>Zip Code</td>
        </tr>
        <tr>
            <td><input type="text" name="tCode" value ="${Drop_Off_Location.getDrop_Off_Tracker_Code()}"></td>
            <td><input type="date" name="dDate" value ="${Drop_Off_Location.getDrop_Off_Date()}"></td>
            <td><input type="text" name="sAddy" value ="${Drop_Off_Location.getStreet_Address()}"></td>
            <td><input type="text" name="dCity" value ="${Drop_Off_Location.getCity()}"></td>
            <td><input type="text" name="sCode" value ="${Drop_Off_Location.getState_Code()}"></td>
            <td><input type="text" name="zCode" value ="${Drop_Off_Location.getZip_Code()}"></td>
        </tr>
        <br>
    </table>
    <input type="submit" value="Submit Change">
    <br>
</form>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>

</body>
</html>