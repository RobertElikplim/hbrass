<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hbrass</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body style="text-align: center;">
<form method="post" action="/submitIncidentType">
    <td>
        <input type="hidden" name="incidentTypeID" value="${Incident_Type.getIncident_Type_ID()}">
    </td>
    <table class="w3-table-all">
        <tr>
            <td>Incident Type</td>
        </tr>
        <tr>
            <td><input type="text" name="incidentType" value ="${Incident.getType_of_Incident()}"></td>

        </tr>
        <br>
    </table>
    <input type="submit" value="Submit Changes">
    <br>
</form>
</body>
</html>