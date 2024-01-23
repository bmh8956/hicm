<%@ page import="category.CategoryDTO" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
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
                        <h3 class="page-title">카테고리</h3>
                    </div>
                </div>
                <!-- End Page Header -->
                <!-- Small Stats Blocks -->
                <div class="row">
                    <div class="col-lg-3 col-md-12 col-sm-12 mb-4">
                        <div class="card card-small">
                            <div class="card-header border-bottom">
                                <h6 class="m-0" style="float: left">메인 카테고리</h6>
                                <button type="button" class="btn btn-white" style="float: right" onclick="add_cate('main')">+</button>
                            </div>
                            <div class="card-body p-0">
                                <ul class="list-group list-group-small list-group-flush" id="main_ul">
<%--                                    <%--%>
<%--                                        List<CategoryDTO> list = new ArrayList<>();--%>
<%--                                        try {--%>
<%--                                            list = (List<CategoryDTO>) request.getAttribute("list");--%>
<%--                                        } catch (Exception e) {--%>
<%--                                            e.printStackTrace();--%>
<%--                                        }--%>
<%--                                        if(list.isEmpty()) {--%>
<%--                                    %>--%>
<%--                                    <li class="list-group-item d-flex px-3 is-active empty" style="cursor: pointer">--%>
<%--                                        <span class="text-semibold text-fiord-blue">등록된 카테고리가 없습니다.</span>--%>
<%--                                    </li>--%>
<%--                                    <%--%>
<%--                                    } else {--%>
<%--                                        for(CategoryDTO dto : list) {--%>
<%--                                    %>--%>
<%--                                    <li class="list-group-item d-flex px-3 is-active" style="cursor: pointer" seq="<%=dto.getCt_seq()%>" onclick="li_click(this)">--%>
<%--                                        <span class="text-semibold text-fiord-blue"><%=dto.getCt_name()%></span>--%>
<%--                                        <span class="ml-auto text-right text-semibold text-reagent-gray cate_del" style="display: none;" seq="<%=dto.getCt_seq()%>" onclick="delete_cate(this)">X</span>--%>
<%--                                    </li>--%>
<%--                                    <%--%>
<%--                                            }--%>
<%--                                        }--%>
<%--                                    %>--%>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-12 col-sm-12 mb-4">
                        <div class="card card-small">
                            <div class="card-header border-bottom">
                                <h6 class="m-0" style="float: left">서브 카테고리</h6>
                                <button type="button" class="btn btn-white" style="float: right" onclick="add_cate('sub')">+</button>
                            </div>
                            <div class="card-body p-0">
                                <ul class="list-group list-group-small list-group-flush" id="sub_ul">
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
<script !src="">
    let add_cate = (type) => {
        let html = '';
        if(type == 'main') {
            html = '<li class="list-group-item d-flex px-3 cateM">' +
                        '<span class="text-semibold text-fiord-blue">' +
                            '<input type="text" class="form-control" id="ct_name_main">' +
                        '</span>' +
                        '<span class="ml-auto text-right text-semibold text-reagent-gray">' +
                            '<button type="button" class="btn btn-white" onclick="insert_cate(0)">저장</button>' +
                            // '<button type="button" class="btn btn-white" onclick="delete_cate(0)">삭제</button>' +
                        '</span>' +
                    '</li>';
            if(!document.getElementById('ct_name_main')) {
                if(document.getElementsByClassName('empty').length > 0) {
                    document.getElementsByClassName('empty')[0].remove();
                }
                document.getElementById('main_ul').innerHTML += html;
            }
        } else if(type == 'sub') {
            html = '<li class="list-group-item d-flex px-3 cateS">' +
                        '<span class="text-semibold text-fiord-blue">' +
                        '   <input type="text" class="form-control" id="ct_name_sub">' +
                        '</span>' +
                        '<span class="ml-auto text-right text-semibold text-reagent-gray">' +
                            '<button type="button" class="btn btn-white" onclick="insert_cate_sub()">저장</button>' +
                            // '<button type="button" class="btn btn-white" onclick="delete_cate(1)">저장</button>' +
                        '</span>' +
                    '</li>';
            if(!document.getElementById('ct_name_sub')) {
                if(document.getElementsByClassName('empty_s').length > 0) {
                    document.getElementsByClassName('empty_s')[0].remove();
                }
                document.getElementById('sub_ul').innerHTML += html;
            }
        }
    }

    let insert_cate_sub = () => {
        let active = document.querySelector("li.is-active.active");
        if(active) {
            insert_cate(active.getAttribute("seq"));
        } else {
            alert("메인 카테고리를 선택해주세요")
            return
        }
    }

    let insert_cate = (par) => {
        // 카테고리 insert
        let ct_name = document.getElementById((par == 0)? "ct_name_main" : "ct_name_sub").value;
        if(ct_name.trim() == '') {
            return
        }
        let data = {
            ct_name : ct_name,
            ct_parent : par
        }
        let html = '';
        let type = (par == 0)? 'M' : 'S'

        $.ajax({
                type: "post",
                url: "insertCate.adm",
                data: data,
                async: false,
                success: function (res) {
                    if(typeof res === 'string') {
                        res = JSON.parse(res)
                    }
                    // console.log("============")
                    // console.log(res)
                    // console.log("============")
                    if(res.msg === 'success') {
                        if(typeof res.ct) {
                            res.ct = JSON.parse(res.ct)
                        }
                        // let li = document.querySelector("li.cate" + type);
                        // li.remove();
                        // html = '<li class="list-group-item d-flex px-3 is-active" style="cursor: pointer" seq="'+ res.ct.ct_seq +'" onclick="li_click(this)">' +
                        //             '<span class="text-semibold text-fiord-blue">'+ res.ct.ct_name +'</span>' +
                        //             '<span class="ml-auto text-right text-semibold text-reagent-gray cate_del" style="display: none;" seq="'+ res.ct.ct_seq +'" onclick="delete_cate(this)">X</span>' +
                        //         '</li>';
                        // document.getElementById((type == 'M')? 'main_ul' : 'side_ul').innerHTML += html;
                        // li_click()
                        if(type == 'M') {
                            get_list();
                        } else if(type == 'S') {
                            get_list(par)
                        }
                    } else {
                        alert("새로고침 후 다시 시도해주세요")
                    }
                }
            });
    }

    let li_click = async (tag) => {
        let is_active = document.getElementsByClassName('is-active');
        if(is_active.length == 1 || !tag) {
            tag = is_active[0]
        }
        for(let ac of is_active) {
            if(ac.classList.contains('active')) {
                ac.classList.remove('active')
            }
        }
        tag.classList.add('active');
        let del_btn = document.getElementsByClassName('cate_del');
        for(let d of del_btn) {
            if(tag.getAttribute('seq') == d.getAttribute('seq')) {
                d.style.display = 'inline-block';
            } else {
                d.style.display = 'none';
            }
        }

        if(tag.getAttribute('seq')) {
            await get_sub(tag.getAttribute('seq'));
        } else {
            document.getElementById('sub_ul').innerHTML = '';
        }
    }

    let get_sub = (seq) => {
        let html = '';
        document.getElementById('sub_ul').innerHTML = '';
        if(!seq) {
            document.getElementById('sub_ul').innerHTML = '';
            return
        }
        $.ajax({
                type: "post",
                url: "getSub.adm",
                data: {
                    ct_seq : seq
                },
                success: function (res) {
                    if(typeof res == 'string') {
                        res = JSON.parse(res)
                    }
                    // console.log(res)
                    if(res.msg == 'success') {
                        for (let ct of res.list) {
                            html += '<li class="list-group-item d-flex px-3" seq="'+ ct.ct_seq +'">' +
                                        '<span class="text-semibold text-fiord-blue">'+ ct.ct_name +'</span>' +
                                        '<span class="ml-auto text-right text-semibold text-reagent-gray cate_del" style="cursor: pointer" seq="'+ ct.ct_seq +'" onclick="delete_cate(this)">X</span>' +
                                    '</li>';
                        }

                        document.getElementById('sub_ul').innerHTML = html;
                    } else {
                        html = '<li class="list-group-item d-flex px-3 is-active empty_s" style="cursor: pointer">' +
                                    '<span class="text-semibold text-fiord-blue">등록된 카테고리가 없습니다.</span>' +
                                '</li>';
                        document.getElementById('sub_ul').innerHTML = html;
                    }
                }
            });
    }

    let delete_cate = (tag) => {
        let seq = tag.getAttribute("seq");
        $.ajax({
                type: "post",
                url: "delete_cate.adm",
                data: {
                    ct_seq : seq
                },
                success: function (res) {
                    // console.log(res)
                    if(typeof res == 'string') {
                        res = JSON.parse(res);
                    }
                    if(res.msg == 'success') {
                        // tag.parentNode.remove();
                        // li_click();
                        get_list();
                    } else {

                    }
                }
            });
    }

    let get_list = (seq) => {
        let html = '';
        document.getElementById('main_ul').innerHTML = '';
        $.ajax({
            type: "post",
            url: "category_list.adm",
            success: function (res) {
                if(typeof res === 'string') {
                    res = JSON.parse(res);
                }
                if(res.msg === 'success') {
                    for(let ct of res.list) {
                        html += '<li class="list-group-item d-flex px-3 is-active" seq="'+ ct.ct_seq +'" onclick="li_click(this)" id="'+ ct.ct_seq +'">' +
                                    '<span class="text-semibold text-fiord-blue">'+ ct.ct_name +'</span>' +
                                    '<span class="ml-auto text-right text-semibold text-reagent-gray cate_del" style="cursor: pointer"  style="display: none;" seq="'+ ct.ct_seq +'" onclick="delete_cate(this)">X</span>' +
                                '</li>';
                    }
                } else {
                    html = '<li class="list-group-item d-flex px-3 is-active empty">' +
                                '<span class="text-semibold text-fiord-blue">등록된 카테고리가 없습니다.</span>' +
                            '</li>';
                }
                document.getElementById('main_ul').innerHTML = html;
                if(res.msg === 'fail') {
                    document.getElementById('sub_ul').innerHTML = '';
                    return
                }
                let is_active = document.getElementsByClassName('is-active');
                if (is_active.length > 0 && !is_active[0].classList.contains('empty')) {
                    if(seq) {
                        li_click(document.getElementById(seq));
                    } else {
                        li_click();
                    }
                }
            }
        });
    }

    window.onload = () => {
        get_list();
    }
</script>
</body>
</html>