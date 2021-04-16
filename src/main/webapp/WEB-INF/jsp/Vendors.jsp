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
    <div class="button-row">
        <!-- Trigger the modal with a button -->
        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#myModal">Add New Record</button>
    </div>

<table class="table table-bordered">
    <tr>
        <th>Vendor ID</th>
        <th>Vendor Name</th>
        <th>Phone Number</th>
        <th>Street Address</th>
        <th>City</th>
        <th>State Code</th>
        <th>Zip Code</th>
        <th>Email</th>
        <th>Vendor Tracker</th>
    </tr>

    <c:forEach var = "Vendor" items = "${vendorList}">
        <tr>
            <td>${Vendor.getVendor_ID()}</td>
            <td>${Vendor.getVendor_Name()}</td>
            <td>${Vendor.getPhone_Number()}</td>
            <td>${Vendor.getStreet_Address()}</td>
            <td>${Vendor.getCity()}</td>
            <td>${Vendor.getState_Code()}</td>
            <td>${Vendor.getZip_Code()}</td>
            <td>${Vendor.getEmail()}</td>
            <td>${Vendor.getVendor_Tracker()}</td>
            <td><a href="/editVendor/${Vendor.getVendor_ID()}"><img src="../../img/edit.jpg" alt="edit_image" ></a></td>
            <td><a href="/deleteVendor/${Vendor.getVendor_ID()}"><img src="../../img/delete.jpg" alt="delete_image" ></a></td>
        </tr>
    </c:forEach>
</table>
</div>
    <div class="modal fade" id="myModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Add New Record</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="container">
                                <form action="/addVendors" method="post">
                                    <div class="row">
                                    <div class="col-lg-6">
                                        <input type="hidden" name="vendorID">
                                        <label>Vendor Name</label>
                                            <input type="text" name="nameVendor">
                                        <label>Phone Number</label>
                                            <input type="text" name="vendorPhoneNumber">
                                        <label>Street Address</label>
                                            <input type="text" name="vendorStreetAddress">
                                        <label>City</label>
                                            <input type="text" name="vendorCity">
                                    </div>
                                    <div class="col-lg-6">
                                        <label>State Code</label>
                                             <select name="vendorStateCode">
                                                    <option value="01">Alabama</option>
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
                                            <label>Zip Code</label>
                                            <input type="text" name="vendorZipCode">
                                            <label>Email</label>
                                            <input type="text" name="vendorEmail">
                                            <label>Vendor Tracker</label>
                                            <input type="text" name="vendorTracker">
                                    </div>
                                    </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary">Save changes</button>
                </div>
                </form>
            </div>
        </div>
    </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
            </div>
        </div>
    </div>
</body>
</html>