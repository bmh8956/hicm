<%--
  Created by IntelliJ IDEA.
  User: hi
  Date: 2024-01-17
  Time: 오후 6:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <script src="static/user/js/jquery.min.js"></script>
    <script src="static/user/js/jquery-migrate-3.0.0.js"></script>
    <script src="static/user/js/jquery-ui.min.js"></script>
</head>
<body>

<script>
    // ?page=1&perPage=10&serviceKey=8raPOyj2NjT3dkw6ukpr0lEJdHOyidjIlnDiq1pJPLzye%2FrTl3WyyblIH7pxOvriBd%2BuXjKQmNczRHkODeTMUQ%3D%3D
    let en = '8raPOyj2NjT3dkw6ukpr0lEJdHOyidjIlnDiq1pJPLzye%2FrTl3WyyblIH7pxOvriBd%2BuXjKQmNczRHkODeTMUQ%3D%3D'
    let obj = {
        page: '1',
        perPage: '10',
        serviceKey: en
    }

    $.ajax({
        type: "get",
        url: "https://api.odcloud.kr/api/FlightStatusListDTL/v1/getFlightStatusListDetail?page=1&perPage=10&serviceKey=8raPOyj2NjT3dkw6ukpr0lEJdHOyidjIlnDiq1pJPLzye%2FrTl3WyyblIH7pxOvriBd%2BuXjKQmNczRHkODeTMUQ%3D%3D",
        success: function (res) {
            console.log(res)
        }
    });
</script>
</body>
</html>
