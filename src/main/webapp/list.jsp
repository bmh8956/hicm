<%@ page import="member.MemberDTO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <!-- Meta Tag -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name='copyright' content=''>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Title Tag  -->
    <title>Eshop - eCommerce HTML5 Template.</title>
    <!-- Favicon -->
    <link rel="icon" type="image/png" href="images/favicon.png">
    <!-- Web Font -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap"
          rel="stylesheet">

    <!-- StyleSheet -->

    <!-- Bootstrap -->
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

    <!-- Color CSS -->
    <link rel="stylesheet" href="static/user/css/color/color1.css">
    <!--<link rel="stylesheet" href="static/user/css/color/color2.css">-->
    <!--<link rel="stylesheet" href="static/user/css/color/color3.css">-->
    <!--<link rel="stylesheet" href="static/user/css/color/color4.css">-->
    <!--<link rel="stylesheet" href="static/user/css/color/color5.css">-->
    <!--<link rel="stylesheet" href="static/user/css/color/color6.css">-->
    <!--<link rel="stylesheet" href="static/user/css/color/color7.css">-->
    <!--<link rel="stylesheet" href="static/user/css/color/color8.css">-->
    <!--<link rel="stylesheet" href="static/user/css/color/color9.css">-->
    <!--<link rel="stylesheet" href="static/user/css/color/color10.css">-->
    <!--<link rel="stylesheet" href="static/user/css/color/color11.css">-->
    <!--<link rel="stylesheet" href="static/user/css/color/color12.css">-->

    <link rel="stylesheet" href="#" id="colors">
    <link rel="stylesheet" href="static/user/css/my.css">

</head>
<jsp:include page="fix/header.jsp"></jsp:include>
<!-- Breadcrumbs -->
<%
    String list_type = (String) request.getParameter("list_type");
    MemberDTO user = new MemberDTO();
    int ct_seq = 0;
    int depth = 0;
    int ct_seq_p = 0;
    int depth_p= 0;
	String ct_name  = "";
	String ct_name_p  = "";
    if(list_type.equals("my")) {
        user = (MemberDTO) session.getAttribute("user");
    } else if(list_type.equals("list")) {
        ct_seq = Integer.parseInt(request.getParameter("ct_seq"));
        depth = Integer.parseInt(request.getParameter("depth"));
        ct_seq_p = Integer.parseInt(request.getParameter("ct_seq"));
        depth_p = Integer.parseInt(request.getParameter("depth"));
		ct_name = request.getParameter("ct_name");
		ct_name_p = request.getParameter("ct_name_p");
    }
%>
<div class="breadcrumbs">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="bread-inner">
                    <ul class="bread-list">
                        <li><a href="/hicommunity">Home<i class="ti-arrow-right"></i></a></li>
                        <%
                            if(list_type.equals("my")) {
                        %>
                        <li class="active"><a href="list.do?listType=my">MY CONTENT</a></li>
                        <%
                            } else if(list_type.equals("list")) {
							    if(depth == 1) {
                        %>
                        <li class="active"><a href="list.do?depth=<%=depth%>&ct_seq=<%=ct_seq%>listType=list"><%=ct_name%></a></li>
                        <%
                                } else {
                        %>
                        <li class="active"><a href="list.do?depth=<%=depth%>&ct_seq=<%=ct_seq%>listType=list" id="depth_1"><%=ct_name_p%><i class="ti-arrow-right"></i></a></li>
                        <li class="active"><a href="list.do?depth=<%=depth%>&ct_seq=<%=ct_seq%>listType=list" id="depth_2"><%=ct_name%></a></li>
                        <%
                                }
                            }
                        %>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Breadcrumbs -->
<input type="hidden" name="list_type" id="list_type" value="<%=list_type%>">
<input type="hidden" name="seq" id="mb_seq" value="<%=user.getMb_seq()%>">
<input type="hidden" name="seq" id="ct_seq" value="<%=ct_seq%>">
<input type="hidden" name="seq" id="depth" value="<%=depth%>">
<input type="hidden" name="" id="page" value="<%=(request.getParameter("page") != null)? request.getParameter("page") : 1%>">
<!-- Shopping Cart -->
<div class="shopping-cart section" style="padding: 0">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div style="float: right">
                    <button type="button" class="btn" onclick="location.href='writeForm.do'">글쓰기 <i
                            class="fa fa-pencil"></i></button>
                </div>
                <!-- Shopping Summery -->
                <table class="table shopping-summery list">
                    <thead>
                    <tr class="main-hading">
                        <th width="10%">no</th>
                        <th width="10%">카테고리</th>
                        <th width="50%">제목</th>
                        <th width="10%">작성자</th>
                        <th width="10%">등록일</th>
                        <th width="10%">조회</th>
                        <%--                        <th class="text-center"><i class="ti-trash remove-icon"></i></th>--%>
                    </tr>
                    </thead>
                    <tbody id="list">
                        <tr><td colspan="6">등록된 게시물이 없습니다.</td>
                    </tbody>
                </table>
                <!--/ End Shopping Summery -->
            </div>
        </div>
    </div>
    <div class="col-12" style="padding-bottom: 3%">
        <!-- Pagination -->
        <div class="pagination center">
            <ul class="pagination-list" id="pagination">
<%--                <li><a href="#"><i class="ti-arrow-left"></i><i class="ti-arrow-left"></i></a></li>--%>
<%--                <li><a href="#"><i class="ti-arrow-left"></i></a></li>--%>
<%--                <li class="active"><a href="#">1</a></li>--%>
<%--                <li><a href="#">2</a></li>--%>
<%--                <li><a href="#">3</a></li>--%>
<%--                <li><a href="#"><i class="ti-arrow-right"></i></a></li>--%>
<%--                <li><a href="#"><i class="ti-arrow-right"></i><i class="ti-arrow-right"></i></a></li>--%>
            </ul>
        </div>
        <!--/ End Pagination -->
    </div>
</div>
<!--/ End Shopping Cart -->


<!-- Start Footer Area -->
<jsp:include page="fix/footer.jsp"></jsp:include>
<!-- /End Footer Area -->

<!-- Jquery -->
<script src="static/user/js/jquery.min.js"></script>
<script src="static/user/js/jquery-migrate-3.0.0.js"></script>
<script src="static/user/js/jquery-ui.min.js"></script>
<!-- Popper JS -->
<script src="static/user/js/popper.min.js"></script>
<!-- Bootstrap JS -->
<script src="static/user/js/bootstrap.min.js"></script>
<!-- Color JS -->
<script src="static/user/js/colors.js"></script>
<!-- Slicknav JS -->
<script src="static/user/js/slicknav.min.js"></script>
<!-- Owl Carousel JS -->
<script src="static/user/js/owl-carousel.js"></script>
<!-- Magnific Popup JS -->
<script src="static/user/js/magnific-popup.js"></script>
<!-- Fancybox JS -->
<script src="static/user/js/facnybox.min.js"></script>
<!-- Waypoints JS -->
<script src="static/user/js/waypoints.min.js"></script>
<!-- Countdown JS -->
<script src="static/user/js/finalcountdown.min.js"></script>
<!-- Nice Select JS -->
<script src="static/user/js/nicesellect.js"></script>
<!-- Ytplayer JS -->
<script src="static/user/js/ytplayer.min.js"></script>
<!-- Flex Slider JS -->
<script src="static/user/js/flex-slider.js"></script>
<!-- ScrollUp JS -->
<script src="static/user/js/scrollup.js"></script>
<!-- Onepage Nav JS -->
<script src="static/user/js/onepage-nav.min.js"></script>
<!-- Easing JS -->
<script src="static/user/js/easing.js"></script>
<!-- Active JS -->
<script src="static/user/js/active.js"></script>

<script>
    function get_list (type, page) {
        let data = {};
        if(type === 'my') {
            data = {
                list_type : type,
                mb_seq : document.getElementById('mb_seq').value,
                page : page
            }
        } else if(type === 'list') {
            data = {
                list_type : type,
                ct_seq : document.getElementById('ct_seq').value,
                page : page,
                depth : document.getElementById("depth").value
            }
        }
        // console.log(data)
        let count = 0;
        let info = {};
        let html = "";
        $.ajax({
                type: "get",
                url: "getList.do",
                data: data,
                success: function (res) {
                    if(typeof res === 'string') {
                        res = JSON.parse(res)
                    }
                    console.log(res)
                    if(res.msg === 'success') {
                        for(let bd of res.list) {
                            html += '<tr>' +
                                        '<td class="text" data-title="No">'+ bd.rn +'</td>' +
                                        '<td class="text" data-title="category">'+ bd.ct_name +'</td>' +
                                        '<td class="product-des content" data-title="Description">' +
                                            '<p class="product-des" onclick="location.href=`getBoard.do?bd_seq='+ bd.bd_seq +'`">' + bd.bd_title +'</p>' +
                                        '</td>' +
                                        '<td class="price" data-title="writer">'+ bd.mb_id +'</td>' +
                                        '<td class="qty" data-title="date">' +
                                            bd.bd_regdate +
                                        '</td>' +
                                        '<td class="total-amount" data-title="Total"><span>32</span></td>' +
                                    '</tr>';
                        }
                        count = Number(res.count);
                        info = JSON.parse(res.paging);
                    } else {
                        html = '<tr><td colspan="6">등록된 게시물이 없습니다.</td>'
                    }
                    document.getElementById("list").innerHTML = html;
                    document.getElementById("page").value = page;
                    paging(count, info);
                }
            });
    }

    let paging = (cnt, info) => {
        console.log(cnt)
        console.log(info)
        let html = '';
        let page = document.getElementById("page").value

        // <li><a href="#"><i className="ti-arrow-left"></i><i className="ti-arrow-left"></i></a></li>
        // <li><a href="#"><i className="ti-arrow-left"></i></a></li>
        // <li className="active"><a href="#">1</a></li>
        // <li><a href="#">2</a></li>
        // <li><a href="#">3</a></li>
        // <li><a href="#"><i className="ti-arrow-right"></i></a></li>
        // <li><a href="#"><i className="ti-arrow-right"></i><i className="ti-arrow-right"></i></a></li>

        if(info.startPage != 1 && cnt > 0) {
            html += '<li><a href="javascript:get_list(document.getElementById(`list_type`).value, 1)"><<</a></li>' +
                    '<li><a href="javascript:get_list(document.getElementById(`list_type`).value, '+ (info.startPage - 1) +')"><</a></li>';
        }
        for(let i=info.startPage;i<=info.endPage;i++) {
            html += '<li ' + ((i == page)? 'class="active"' : '') + '><a href="javascript:get_list(document.getElementById(`list_type`).value, '+ i +')">'+ i +'</a></li>';
            if(i == page) {
                console.log(i)
                console.log(page)
            }
        }
        if(info.endPage != info.lastPage) {
           html += '<li><a href="javascript:get_list(document.getElementById(`list_type`).value, '+ (info.endPage + 1) +')">></a></li>' +
                    '<li><a href="javascript:get_list(document.getElementById(`list_type`).value, '+ info.lastPage +')">>></a></li>';
        }
        // console.log(html)
        document.getElementById("pagination").innerHTML = html;

    }

    window.onload = () => {
        get_list(document.getElementById("list_type").value, document.getElementById("page").value);

    }
</script>
</body>
</html>