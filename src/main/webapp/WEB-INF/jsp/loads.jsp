<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hbrass</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"></head>
<body>

<table class="w3-table-all">
    <tr>
        <th>Load ID</th>
        <th>Date</th>
        <th>Pick Up ID</th>
        <th>Drop Off ID</th>
        <th>VIN</th>
        <th>Trailer ID</th>
        <th>Driver ID</th>
        <th>Dead Head</th>
        <th>Loaded Miles</th>
        <th>Total Miles</th>
        <th>Driver Pay</th>
        <th>Remarks</th>
    </tr>
    <c:forEach var = "Loads" items = "${loadsList}">
        <tr>
            <td>${Loads.getLoad_ID()}</td>
            <td>${Loads.getDate()}</td>
            <td>${Loads.getPick_Up_ID()}</td>
            <td>${Loads.getDrop_Off_ID()}</td>
            <td>${Loads.getTruck_ID_VIN()}</td>
            <td>${Loads.getTrailer_ID()}</td>
            <td>${Loads.getDriver_ID()}</td>
            <td>${Loads.getDead_Head()}</td>
            <td>${Loads.getLoaded_Miles()}</td>
            <td>${Loads.getTotal_Miles()}</td>
            <td>${Loads.getDriver_Pay()}</td>
            <td>${Loads.getRemarks()}</td>
            <td><a href="/editLoads/${Loads.getLoad_ID()}"><img src="../../img/edit.jpg" alt="edit_image" ></a></td>
            <td><a href="/deleteLoads/${Loads.getLoad_ID()}"><img src="../../img/delete.jpg" alt="delete_image" ></a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>