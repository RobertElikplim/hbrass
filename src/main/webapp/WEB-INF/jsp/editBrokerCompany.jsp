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
        <a class="navbar-brand">Broker Company Edit</a>
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
        <th>Broker ID</th>
        <th>Broker Name</th>
        <th>Street Address</th>
        <th>State Code</th>
        <th>Zip Code</th>
        <th>Phone Number</th>
        <th>Email Address</th>
    </tr>
    </table>

    <form method="post" action="/submitBrokerCompany">
        <table>
        <td><input type="text" name="brokerID" value="${Broker_Company.getBroker_ID()}"></td>
        <td><input type="text" name="brokerName" value="${Broker_Company.getBroker_Name()}"></td>
        <td><input type="text" name="streetAddress" value="${Broker_Company.getStreet_Address()}"></td>
        <td><input type="text" name="stateCode" value="${Broker_Company.getState_Code()}"></td>
        <td><input type="text" name="zipCode" value="${Broker_Company.getZip_Code()}"></td>
        <td><input type="text" name="phoneNumber" value="${Broker_Company.getPhone_Number()}"></td>
        <td><input type="text" name="email" value="${Broker_Company.getEmail_Address()}"></td>
        </tr>
    </table>
                <input type="submit" value="Submit Changes">
    </form>
</div>

</body>
</html>