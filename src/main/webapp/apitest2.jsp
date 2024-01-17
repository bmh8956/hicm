<%--
  Created by IntelliJ IDEA.
  User: bmh89
  Date: 2024-01-18
  Time: 오전 12:14
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
<input type="text" name="" id="data" value="해리포터">
<input type="text" name="" id="page" oninput="num()">
<button type="button" onclick="api()">search</button>
<script>
    let num = () => {
        let page = document.getElementById("page");
        page.value = page.value.replace(/[^0-9]/g, "");
    }
    let api = () => {
        console.log($("#data").val())
        let movie = document.getElementById("data").value;
        let page = document.getElementById("page").value;
        if(Number(page) < 1 || page === '') {
            page = 1;
        }

        $.ajax({
            type: "get",
            url: "http://www.kobis.or.kr/kobisopenapi/webservice/rest/movie/searchMovieList.json?key=403dddce8295bd4a4cd9f69a6c26946d&curPage="+ page +"&movieNm=" + movie,
            data: "data",
            success: function (res) {
                console.log(res.movieListResult.movieList)
                console.log(res.movieListResult.totCnt)
            }
        });
    }
</script>
</body>
</html>
