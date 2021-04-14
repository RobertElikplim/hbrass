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
    <div class="button-row">
        <!-- Trigger the modal with a button -->
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">Add New Record</button>
    </div>

<table class="table table-bordered">
    <tr>
        <th>IFTA ID</th>
        <th>VIN</th>
        <th>IFTA Status</th>
        <th>Expiration Date</th>
    </tr>
    <c:forEach var = "IFTA_Sticker" items = "${iftaStickerList}">
        <tr>
            <td>${IFTA_Sticker.getIFTA_ID()}</td>
            <td>${IFTA_Sticker.getTruck_ID_VIN()}</td>
            <td>${IFTA_Sticker.getIFTA_Status()}</td>
            <td>${IFTA_Sticker.getIFTA_Expiration_Date()}</td>
            <td><a href="/editIFTA_Sticker/${IFTA_Sticker.getIFTA_ID()}"><img src="../../img/edit.jpg" alt="edit_image" ></a></td>
            <td><a href="/deleteIFTA_Sticker/${IFTA_Sticker.getIFTA_ID()}"><img src="../../img/delete.jpg" alt="delete_image" ></a></td>
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
                    <form method="post" action="/submitIfta">
                        <input type="hidden" name="iftaID">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-4">
                                    <label>Status</label><br>
                                        <input type="text" name="ifta" placeholder="*">
                                    <label>Last Name</label>
                                        <input type="text" name="LastName" placeholder="*">
                                    <label>Relationship</label>
                                        <input type="text" name="Relationship" placeholder="*">
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