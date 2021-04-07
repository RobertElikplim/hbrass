<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login Page</title>
    <style><%@include file="../css/style.css"%></style>
</head>
<body>
<center>
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
        <input type="submit" class="btn" value="Login"><br>
        <a href="/signup" style="text-decoration: none;"> New user? Register Here! </a>
        <input type="text" style="color:red" align="right" size="50" class="ns" name="message" value="${msg}">
    </form>
</center>
</body>
</html>