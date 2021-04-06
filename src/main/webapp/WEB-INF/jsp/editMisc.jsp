<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hbrass</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body style="text-align: center;">
<form method="post" action="/submitMisc">
    <td><input type="hidden" name="miscID" value="${Miscellaneous.getMiscellaneous_ID()}"></td>
    <table class="w3-table-all">
        <tr>
            <td>Cost</td>
            <td>Description</td>
        </tr>
        <tr>
            <td><input type="text" name="cost" value ="${Miscellaneous.getCost()}"></td>
            <td><input type="text" name="desc" value ="${Miscellaneous.getDescription()}"></td>
        </tr>
        <br>
    </table>
    <input type="submit" value="Submit Changes">
    <br>
</form>
</body>
</html>