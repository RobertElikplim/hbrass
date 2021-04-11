<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hbrass</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body style="text-align: center;">
<form method="post" action="/submitIfta">
    <td><input type="hidden" name="iftaID" value="${IFTA_Sticker.getIFTA_ID()}"></td>
    <table class="w3-table-all">
        <tr>
            <td>Status</td>
            <td>VIN</td>
            <td>Expiration Date</td>
        </tr>
        <tr>
            <td><input type="text" name="ifta" value ="${IFTA_Sticker.getIFTA_Status()}"></td>
            <td><input type="text" name="vin" value ="${IFTA_Sticker.getTruck_ID_VIN()}"></td>
            <td><input type="date" name="eDate" value ="${IFTA_Sticker.getIFTA_Expiration_Date()}"></td>
        </tr>
        <br>
    </table>
    <input type="submit" value="Submit Change">
    <br>
</form>
</body>
</html>