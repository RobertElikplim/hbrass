<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Registration Page</title>
    <style><%@include file="../css/style.css"%></style>
</head>
<body>
<center>
    <form class="fm" method = "post" action="/save1/">
        <div class="tb">
            <input type="hidden" name="id" value="">
            <label><b>Admin </b></label>
            <select  name="admin" required>
                <option></option>
                <option value="1">Yes</option>
                <option value="0">No</option>
            </select>
            <br><br>
            <label><b>Username </b></label>
            <input type="text" placeholder="Enter Username" name="uname" required>
            <br><br>
            <label><b>Password</b></label>
            <input type="password" placeholder="Enter Password" name="pwd" required>
        </div>
        <input type="submit" class="btn" value="Register"><br>
        <a href="/" style="text-decoration: none;">Have an account? Login Here!</a></a>
    </form>
</center>
</body>
</html>