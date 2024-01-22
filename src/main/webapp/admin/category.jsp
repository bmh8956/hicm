<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html class="no-js h-100" lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Shards Dashboard Lite - Free Bootstrap Admin Template – DesignRevision</title>
    <meta name="description"
          content="A high-quality &amp; free Bootstrap admin dashboard template pack that comes with lots of templates and components.">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" id="main-stylesheet" data-version="1.1.0"
          href="static/styles/shards-dashboards.1.1.0.min.css">
    <link rel="stylesheet" href="static/styles/extras.1.1.0.min.css">
    <script async defer src="https://buttons.github.io/buttons.js"></script>
    <link rel="stylesheet" href="static/styles/my.css">
</head>
<body class="h-100">
<div class="container-fluid">
    <div class="row">
        <!-- Main Sidebar -->
        <jsp:include page="fix/aside.jsp"></jsp:include>
        <!-- End Main Sidebar -->
        <main class="main-content col-lg-10 col-md-9 col-sm-12 p-0 offset-lg-2 offset-md-3">
            <jsp:include page="fix/nav.jsp"></jsp:include>
            <!-- / .main-navbar -->
            <div class="main-content-container container-fluid px-4">
                <!-- Page Header -->
                <div class="page-header row no-gutters py-4">
                    <div class="col-12 col-sm-4 text-center text-sm-left mb-0">
                        <span class="text-uppercase page-subtitle">main</span>
                        <h3 class="page-title">관리자 인증 게시물</h3>
                    </div>
                </div>
                <!-- End Page Header -->
                <!-- Small Stats Blocks -->
                <div class="row">

                </div>
                <div class="row">
                    <div class="col-lg-3 col-md-12 col-sm-12 mb-4">
                        <div class="card card-small">
                            <div class="card-header border-bottom">
                                <h6 class="m-0" style="float: left">메인 카테고리</h6>
                                <button type="button" class="btn btn-white" style="float: right" id="add_main_cate">+</button>
                            </div>
                            <div class="card-body p-0">
                                <ul class="list-group list-group-small list-group-flush" id="main_ul">
                                    <li class="list-group-item d-flex px-3 main_cate">
                                        <span class="text-semibold text-fiord-blue">GitHub</span>
                                        <span class="ml-auto text-right text-semibold text-reagent-gray">▶</span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-12 col-sm-12 mb-4">
                        <div class="card card-small">
                            <div class="card-header border-bottom">
                                <h6 class="m-0">서브 카테고리</h6>
                            </div>
                            <div class="card-body p-0">
                                <ul class="list-group list-group-small list-group-flush">
                                    <li class="list-group-item d-flex px-3">
                                        <span class="text-semibold text-fiord-blue">GitHub</span>
                                        <span class="ml-auto text-right text-semibold text-reagent-gray">19,291</span>
                                    </li>
                                    <li class="list-group-item d-flex px-3">
                                        <span class="text-semibold text-fiord-blue">Stack Overflow</span>
                                        <span class="ml-auto text-right text-semibold text-reagent-gray">11,201</span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"
        integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
        integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js"></script>
<script src="https://unpkg.com/shards-ui@latest/dist/js/shards.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Sharrre/2.0.1/jquery.sharrre.min.js"></script>
<script src="static/scripts/extras.1.1.0.min.js"></script>
<script src="static/scripts/shards-dashboards.1.1.0.min.js"></script>
<script src="static/scripts/app/app-blog-overview.1.1.0.js"></script>
<script>
    let add_main_cate = () => {
        let add_main_input = document.getElementById("add_main_input");
        if(add_main_input) {
            return;
        } else {
            let html = '<li class="list-group-item d-flex px-3">' +
                                '<input type="text" class="form-control" id="add_main_input">' +
                                '<button type="button" class="btn btn-white" id="save_main">저장</button>' +
                        '</li>';
            document.getElementById("main_ul").innerHTML += html;
        }
    }

    let insert_cate = (par) => {
        let cate = document.getElementById("add_main_input").value;
        $.ajax({
            type: "post",
            url: "addCate.adm",
            data: {
                ct_name : cate,
                ct_parent : par
            },
            success: function (res) {
                console.log(res)
            }
        });
    }


    window.onload = () => {
        let main_cate_all = document.getElementsByClassName("main_cate");
        let add_main = document.getElementById("add_main_cate");
        add_main.addEventListener("click", function (e) {
            add_main_cate();
        })
        document.getElementById("save_main").addEventListener("click", function(e) {
            insert_cate(0);
        })

    }
</script>
</body>
</html>