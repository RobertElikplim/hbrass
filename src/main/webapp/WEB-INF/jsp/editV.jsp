<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hbrass</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body style="text-align: center;">
<form method="post" action="/submitInsuranceTable">
    <td><input type="hidden" name="insureID" value="${Insurance.getInsure_ID()}"></td>
    <table class="w3-table-all">
        <tr>
            <td>Insurance ID</td>
            <td>Insurance Type</td>
            <td>Coverage Expiration</td>
        </tr>
        <tr>
            <td><input type="text" name="insuranceID" value ="${Insurance.getInsurance_ID()}"></td>
            <td><input type="text" name="insuranceType" value ="${Insurance.getInsurance_Type()}"></td>
            <td><input type="text" name="coverageExpiration" value ="${Insurance.getCoverage_Expiration()}"></td>
        </tr>
        <br>
    </table>
    <input type="submit" value="Submit Changes">
    <br>
</form>
</body>
</html>