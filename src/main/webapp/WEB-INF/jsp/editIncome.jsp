<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hbrass</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body style="text-align: center;">
<form method="post" action="/submitIncome">
    <td><input type="hidden" name="incomeID" value="${Income.getIncome_ID()}"></td>
    <table class="w3-table-all">
        <tr>
            <td>Load Fare</td>
            <td>Commission</td>
            <td>Insurance</td>
            <td>Total Income</td>
        </tr>
        <tr>
            <td><input type="text" name="loadFare" value ="${Income.getLoad_Fare()}"></td>
            <td><input type="text" name="commission" value ="${Income.getCommission()}"></td>
            <td><input type="text" name="insurance" value ="${Income.getInsurance()}"></td>
            <td><input type="text" name="totalIncome" value ="${Income.getTotal_Income()}"></td>
        </tr>
        <br>
    </table>
    <input type="submit" value="Submit Changes">
    <br>
</form>
</body>
</html>