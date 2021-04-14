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
        <input type="hidden" name="id" value="">
        <div class="col-lg-4">
            <table>
                <tr>
                    <td><label><b>Admin </b></label></td>
                    <td>
                        <select  name="admin" required>
                            <option></option>
                            <option value="1">Yes</option>
                            <option value="0">No</option>
                        </select>
                    </td>
                </tr>
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
        <input type="submit" class="btn" value="Register"><br>
        <a href="/" style="text-decoration: none;">Have an account? Login Here!</a></a>
    </form>
</center>
</body>
</html>