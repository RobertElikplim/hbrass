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

    <form method="post" action="/submitBrokerCompany">
        <td><input class="form-control" type="text" name="brokerID" value="${Broker_Company.getBroker_ID()}"></td>
        <td><input class="form-control" type="text" name="brokerName" value="${Broker_Company.getBroker_Name()}"></td>
        <td><input class="form-control" type="text" name="streetAddress" value="${Broker_Company.getStreet_Address()}"></td>
        <td><label>State Code</label>
            <select class="form-control" name="stateCode">
                <option value="01" selected>Alabama</option>
                <option value="02">Alaska</option>
                <option value="04">Arizona</option>
                <option value="05">Arkansas</option>
                <option value="06">California</option>
                <option value="08">Colorado</option>
                <option value="09">Connecticut</option>
                <option value="10">Delaware</option>
                <option value="11">District Of Columbia</option>
                <option value="12">Florida</option>
                <option value="13">Georgia</option>
                <option value="15">Hawaii</option>
                <option value="16">Idaho</option>
                <option value="17">Illinois</option>
                <option value="18">Indiana</option>
                <option value="19">Iowa</option>
                <option value="20">Kansas</option>
                <option value="21">Kentucky</option>
                <option value="22">Louisiana</option>
                <option value="23">Maine</option>
                <option value="24">Maryland</option>
                <option value="25">Massachusetts</option>
                <option value="26">Michigan</option>
                <option value="27">Minnesota</option>
                <option value="28">Mississippi</option>
                <option value="29">Missouri</option>
                <option value="30">Montana</option>
                <option value="31">Nebraska</option>
                <option value="32">Nevada</option>
                <option value="33">New Hampshire</option>
                <option value="34">New Jersey</option>
                <option value="35">New Mexico</option>
                <option value="36">New York</option>
                <option value="37">North Carolina</option>
                <option value="38">North Dakota</option>
                <option value="39">Ohio</option>
                <option value="40">Oklahoma</option>
                <option value="41">Oregon</option>
                <option value="42">Pennsylvania</option>
                <option value="44">Rhode Island</option>
                <option value="45">South Carolina</option>
                <option value="46">South Dakota</option>
                <option value="47">Tennessee</option>
                <option value="48">Texas</option>
                <option value="49">Utah</option>
                <option value="50">Vermont</option>
                <option value="51">Virginia</option>
                <option value="53">Washington</option>
                <option value="54">West Virginia</option>
                <option value="55">Wisconsin</option>
                <option value="56">Wyoming</option>
                <option value="60">American Samoa</option>
                <option value="64">Micronesia</option>
                <option value="66">Guam</option>
                <option value="68">Marshall Islands</option>
                <option value="69">Northern Mariana Islands</option>
                <option value="70">Palau</option>
                <option value="72">Puerto Rico</option>
                <option value="74">US Minor Outlying Islands</option>
                <option value="78">Virgin Islands</option>
                <option value="AA">Armed Forces Americas</option>
                <option value="AP">Armed Forces Pacific</option>
                <option value="AE">Armed Forces Others</option>
            </select>
</div></td>
        <td><input class="form-control" type="text" name="zipCode" value="${Broker_Company.getZip_Code()}"></td>
        <td><input class="form-control" type="text" name="phoneNumber" value="${Broker_Company.getPhone_Number()}"></td>
        <td><input class="form-control" type="text" name="email" value="${Broker_Company.getEmail_Address()}"></td>
        </tr>
    </table>
    <input class="btn btn-primary" type="submit" value="Submit Changes">
    </form>
</div>

</body>
</html>