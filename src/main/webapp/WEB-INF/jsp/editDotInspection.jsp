<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hbrass</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body style="text-align: center;">
<form method="post" action="/submitDotInspection">
    <td><input type="hidden" name="dotInspectionID" value="${Dot_Inspection.getDot_Inspection_ID()}"></td>
    <table class="w3-table-all">
        <tr>
            <td>VIN</td>
            <td>Certification Date</td>
            <td>Expiration Date</td>
        </tr>
        <tr>
            <td><input type="text" name="vin" value ="${Dot_Inspection.getTruck_ID_VIN()}"></td>
            <td><input type="date" name="cDate" value ="${Dot_Inspection.getDot_Certification_Date()}"></td>
            <td><input type="date" name="eDate" value ="${Dot_Inspection.getDot_Expiration_Date()}"></td>
        </tr>
        <br>
    </table>
    <input type="submit" value="Submit Changes">
    <br>
</form>
</body>
</html>