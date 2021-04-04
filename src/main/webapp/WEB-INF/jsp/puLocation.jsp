<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hbrass</title>
    <style><%@include file="../css/style.css"%></style>
</head>
<body>

<table>
    <tr>
        <th>Pick Up ID</th>
        <th>Pick Up Tracker Code</th>
        <th>Pick Up Date</th>
        <th>Street Address</th>
        <th>City</th>
        <th>State Code</th>
        <th>Zipcode</th>
    </tr>
    <c:forEach var = "Pick_Up_Location" items = "${puLocationList}">
        <tr>
            <td>${Pick_Up_Location.getPickUpID()}</td>
            <td>${Pick_Up_Location.getPuTrackerCode()}</td>
            <td>${Pick_Up_Location.getPuDate()}</td>
            <td>${Pick_Up_Location.getStreetAddress()}</td>
            <td>${Pick_Up_Location.getCity()}</td>
            <td>${Pick_Up_Location.getStateCode()}</td>
            <td>${Pick_Up_Location.getZipCode()}</td>
            <td><a href="/editPick_Up_Location/${Pick_Up_Location.getPickUpID()}"><img src="../../img/edit.jpg" alt="edit_image" ></a></td>
            <td><a href="/deletePick_Up_Location/${Pick_Up_Location.getPickUpID()}"><img src="../../img/delete.jpg" alt="delete_image" ></a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>