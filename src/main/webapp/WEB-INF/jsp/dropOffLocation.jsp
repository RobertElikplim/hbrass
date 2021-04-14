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
    <div class="button-row">
        <!-- Trigger the modal with a button -->
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">Add New Record</button>
    </div>

<table class="table table-bordered">
    <tr>
        <th>Drop Off ID</th>
        <th>Drop Off Tracker Code</th>
        <th>Drop Off Date</th>
        <th>Street Address</th>
        <th>City</th>
        <th>State Code</th>
        <th>Zip Code</th>
    </tr>
    <c:forEach var = "Drop_Off_Location" items = "${dropOffLocationList}">
        <tr>
            <td>${Drop_Off_Location.getDrop_Off_ID()}</td>
            <td>${Drop_Off_Location.getDrop_Off_Tracker_Code()}</td>
            <td>${Drop_Off_Location.getDrop_Off_Date()}</td>
            <td>${Drop_Off_Location.getStreet_Address()}</td>
            <td>${Drop_Off_Location.getCity()}</td>
            <td>${Drop_Off_Location.getState_Code()}</td>
            <td>${Drop_Off_Location.getZip_Code()}</td>
            <td><a href="/editDrop_Off_Location/${Drop_Off_Location.getDrop_Off_ID()}"><img src="../../img/edit.jpg" alt="edit_image" ></a></td>
            <td><a href="/deleteDrop_Off_Location/${Drop_Off_Location.getDrop_Off_ID()}"><img src="../../img/delete.jpg" alt="delete_image" ></a></td>
        </tr>
    </c:forEach>
</table>
    <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Add New Record</h4>
                </div>
                <div class="modal-body">
                    <form method="post" action="/submitDOL">
                        <input type="hidden" name="dropOffID">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-4">
                                    <label>Drop Off Tracker Code</label><br>
                                        <input type="text" name="tCode" placeholder="*">
                                    <label>Drop Off Date</label>
                                        <input type="date" name="dDate" placeholder="*">
                                    <label>Street Address</label>
                                        <input type="text" name="sAddy" placeholder="*">
                                </div>
                                <div class="col-lg-3">
                                    <label>City</label><br>
                                        <input type="text" name="dCity" placeholder="*">
                                    <label>State Code</label>
                                        <input type="text" name="sCode" placeholder="*">
                                    <label>Zip Code</label>
                                        <input type="text" name="zCode" placeholder="*">
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
</div>
</body>
</html>