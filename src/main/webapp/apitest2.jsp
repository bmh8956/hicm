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
    <link rel="stylesheet" href="static/user/css/bootstrap.css">
    <!-- Magnific Popup -->
    <link rel="stylesheet" href="static/user/css/magnific-popup.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="static/user/css/font-awesome.css">
    <!-- Fancybox -->
    <link rel="stylesheet" href="static/user/css/jquery.fancybox.min.css">
    <!-- Themify Icons -->
    <link rel="stylesheet" href="static/user/css/themify-icons.css">
    <!-- Nice Select CSS -->
    <link rel="stylesheet" href="static/user/css/niceselect.css">
    <!-- Animate CSS -->
    <link rel="stylesheet" href="static/user/css/animate.css">
    <!-- Flex Slider CSS -->
    <link rel="stylesheet" href="static/user/css/flex-slider.min.css">
    <!-- Owl Carousel -->
    <link rel="stylesheet" href="static/user/css/owl-carousel.css">
    <!-- Slicknav -->
    <link rel="stylesheet" href="static/user/css/slicknav.min.css">

    <!-- Eshop StyleSheet -->
    <link rel="stylesheet" href="static/user/css/reset.css">
    <link rel="stylesheet" href="static/user/style.css">
    <link rel="stylesheet" href="static/user/css/responsive.css">
    <style>
        table {
            padding-bottom: 5%;
            border-bottom: 1px solid black;
        }
    </style>
</head>
<body>
<input type="text" name="" id="data" value="해리포터">
<input type="text" name="" id="page" oninput="num()">
<button type="button" onclick="api()">search</button>
<div class="container">

</div>
<script>
    let num = () => {
        let page = document.getElementById("page");
        page.value = page.value.replace(/[^0-9]/g, "");
    }
    let api = () => {
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
                console.log(res)
                console.log(res.movieListResult.movieList)
                let list = res.movieListResult.movieList;
                if(list.length > 0) {
                    document.querySelector('.container').innerHTML = '';
                } else {
                    document.querySelector('.container').innerHTML = '검색결과 없음';
                }
                let table = document.createElement('table');
                table.classList.add('table')
                let tr1 = document.createElement('tr');
                table.append(tr1);
                let index = 0;
                for(let li of list) {
                    let tr2 = document.createElement('tr');
                    for(let l of Object.keys(li)) {
                        if(index == 0) {
                            let th = document.createElement('th');
                            th.textContent = l;
                            tr1.append(th)
                        }
                        let td = document.createElement('td');
                        if(typeof li[l] == 'object') {
                            li[l] = JSON.stringify(li[l])
                        }
                        td.textContent = li[l];
                        tr2.append(td);
                        table.append(tr2);
                    }
                    index++;
                }
                document.querySelector(".container").append(table)
            }
        });

        // $.ajax({
        //     type: "get",
        //     url: "http://www.kobis.or.kr/kobisopenapi/webservice/rest/movie/searchMovieList.json?key=403dddce8295bd4a4cd9f69a6c26946d&curPage="+ page +"&movieNm=" + movie,
        //     data: "data",
        //     success: function (res) {
        //         console.log(res.movieListResult.movieList)
        //         // console.log(res.movieListResult.totCnt)
        //         let list = res.movieListResult.movieList;
        //         if(list.length > 0) {
        //             document.querySelector('.container').innerHTML = '';
        //         } else {
        //             document.querySelector('.container').innerHTML = '검색결과 없음';
        //         }
        //         for(let li of list) {
        //             let table = document.createElement('table');
        //             table.classList.add('table')
        //             for(let l of Object.keys(li)) {
        //                 let tr = document.createElement('tr');
        //                 let td1 = document.createElement('td');
        //                 let td2 = document.createElement('td');
        //                 td1.textContent = l;
        //                 if(typeof li[l] == 'object') {
        //                     li[l] = JSON.stringify(li[l])
        //                 }
        //                 td2.textContent = li[l];
        //                 tr.append(td1);
        //                 tr.append(td2);
        //                 table.append(tr)
        //             }
        //             document.querySelector('.container').append(table)
        //         }
        //     }
        // });
    }
</script>
</body>
</html>
