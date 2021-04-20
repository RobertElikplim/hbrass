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
        <a class="navbar-brand">Trailer</a>
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
        <th>Trailer ID</th>
        <th>Trailer Code</th>
        <th>Type of Trailer</th>
        <th>Weight of Trailer</th>
        <th>License Plate</th>
    </tr>
    <c:forEach var = "Trailer" items = "${trailerList}">
        <tr>
            <td>${Trailer.getTrailer_ID()}</td>
            <td>${Trailer.getTrailer_Code()}</td>
            <td>${Trailer.getType_Of_Trailer()}</td>
            <td>${Trailer.getWeight_Of_Trailer()}</td>
            <td>${Trailer.getLicense_Plate()}</td>
            <td><a href="/editTrailer/${Trailer.getColumn_ID()}"><img src="../../img/edit.jpg" alt="edit_image" ></a></td>
            <td><a href="/deleteTrailer/${Trailer.getColumn_ID()}"><img src="../../img/delete.jpg" alt="delete_image" ></a></td>
        </tr>
    </c:forEach>
</table>
</div>
<!-- Add Record Modal -->
<div class="modal fade" id="myModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Add New Record</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">

                <div class="container">
                            <form action="/submitTrailer" method="post">
                                <div class="row">
                                    <div class="col-lg-8">
                                <input class="form-control" type="hidden" name="cID">
                                <label>Trailer ID:</label>
                                    <input class="form-control" type="text" name="trailerID">
                                <label>Trailer Code:</label>
                                    <input class="form-control" type="text" name="tc">
                                        <label>Type Of Trailer</label>
                                        <input class="form-control" type="text" name="tot">
                                <label>Weight:</label>
                                    <input class="form-control" type="text" name="weight">
                                <label>License Plate:</label>
                                    <input class="form-control" type="text" name="lcp">
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



</body>
</html>