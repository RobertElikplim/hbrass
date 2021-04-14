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
        <th>Dot Inspection ID</th>
        <th>VIN</th>
        <th>Certification Date</th>
        <th>Expiration Date</th>
    </tr>
    <c:forEach var = "Dot_Inspection" items = "${dotInspectionList}">
        <tr>
            <td>${Dot_Inspection.getDot_Inspection_ID()}</td>
            <td>${Dot_Inspection.getTruck_ID_VIN()}</td>
            <td>${Dot_Inspection.getDot_Certification_Date()}</td>
            <td>${Dot_Inspection.getDot_Expiration_Date()}</td>
            <td><a href="/editDot_Inspection/${Dot_Inspection.getDot_Inspection_ID()}"><img src="../../img/edit.jpg" alt="edit_image" ></a></td>
            <td><a href="/deleteDot_Inspection/${Dot_Inspection.getDot_Inspection_ID()}"><img src="../../img/delete.jpg" alt="delete_image" ></a></td>
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
                    <form method="post" action="/submitDotInspection">
                        <input type="hidden" name="dotInspectionID">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-4">
                                    <label>VIN</label><br>
                                    <input type="text" name="vin" placeholder="*">
                                    <label>Certification Date</label>
                                    <input type="date" name="cDate" placeholder="*">
                                    <label>Expiration Date</label>
                                    <input type="date" name="eDate" placeholder="*">
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