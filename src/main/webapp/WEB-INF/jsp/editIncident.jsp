<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hbrass</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body style="text-align: center;">
<form method="post" action="/submitIncident">
    <td>
        <input type="hidden" name="incidentID" value="${Incident.getIncident_ID()}">
        <input type="hidden" name="incidentStatusID" value="${Incident.getIncident_Status_ID()}">
        <input type="hidden" name="incidentTypeID" value="${Incident.getIncident_Type_ID()}">
    </td>
    <table class="w3-table-all">
        <tr>
            <td>Load ID</td>
            <td>Employee ID</td>
            <td>Remarks</td>
        </tr>
        <tr>
            <td><input type="text" name="loadID" value ="${Incident.getLoad_ID()}"></td>
            <td><input type="text" name="employeeID" value ="${Income.getEmployee_ID()}"></td>
            <td><input type="text" name="remarks" value ="${Income.getRemarks()}"></td>

        </tr>
        <br>
    </table>
    <input type="submit" value="Submit Changes">
    <br>
</form>
</body>
</html>