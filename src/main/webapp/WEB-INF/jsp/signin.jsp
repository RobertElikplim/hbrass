<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login Page</title>
    <style><%@include file="../css/style.css"%></style><link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body>
<center>
    <form class="fm" method = "get" action="/get/">
        <div class="col-lg-4" >
                <input type="hidden" name="id" value="">
                <input type="hidden" name="admin" value="">
            <table>
                <tr>
                    <td><label>Username </label></td>
                    <td><input type="text" placeholder="Enter Username" name="uname" required></td>
                </tr>
                <tr>
                    <td><label>Password</label></td>
                    <td><input type="password" placeholder="Enter Password" name="pwd" required></td>
                </tr>
            </table>
        </div>
        <input type="submit" class="btn" value="Login"><br>
        <a href="/signup" style="text-decoration: none;"> New user? Register Here! </a>
    </form>
</center>
</body>
</html>