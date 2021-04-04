<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hbrass</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"></head>
<body>

<table class="w3-table-all">
    <tr>
        <th>IFTA ID</th>
        <th>VIN</th>
        <th>IFTA Status</th>
        <th>Expiration Date</th>
    </tr>
    <c:forEach var = "IFTA_Sticker" items = "${iftaStickerList}">
        <tr>
            <td>${IFTA_Sticker.getIFTA_ID()}</td>
            <td>${IFTA_Sticker.getTruck_ID_VIN()}</td>
            <td>${IFTA_Sticker.getIFTA_Status()}</td>
            <td>${IFTA_Sticker.getIFTA_Expiration_Date()}</td>
            <td><a href="/editIFTA_Sticker/${IFTA_Sticker.getIFTA_ID()}"><img src="../../img/edit.jpg" alt="edit_image" ></a></td>
            <td><a href="/deleteIFTA_Sticker/${IFTA_Sticker.getIFTA_ID()}"><img src="../../img/delete.jpg" alt="delete_image" ></a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>