<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
    <style><%@include file="../css/style.css"%></style>

</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand">In Big Wheels</a>
        <div class="navbar-right" id="navbarSupportedContent">
        </div>
    </div>
</nav>

    <form class="fm" method = "get" action="/get/">
        <div class="tb">
            <input type="hidden" name="id" value="">
            <input type="hidden" name="admin" value="">
            <label><b>Username </b></label>
            <input type="text" placeholder="Enter Username" name="uname" required>
            <br><br>
            <label><b>Password</b></label>
            <input type="password" placeholder="Enter Password" name="pwd" required>
        </div>
        <input type="submit" class="btn btn-primary" value="Login"><br>
        <a href="/signup" style="text-decoration: none;"> New user? Register Here! </a>
        <input type="text" style="color:red" align="right" size="50" class="ns" name="message" value="${msg}">
    </form>
</center>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>

</body>
</html>