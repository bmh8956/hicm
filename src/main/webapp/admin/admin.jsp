<%@ page import="member.MemberDTO" %>
<%@ page import="java.util.List" %>
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
                        <h3 class="page-title">관리자 계정</h3>
                    </div>
                </div>
                <!-- End Page Header -->
                <!-- Small Stats Blocks -->
                <div class="row">
                    <div class="col">
                        <div class="card card-small overflow-hidden mb-4">
                            <div class="card-body p-0 pb-3 bg-dark text-center">
                                <table class="table table-dark mb-0 list">
                                    <thead class="thead-dark">
                                    <tr>
                                        <th scope="col" class="border-bottom-0">번호</th>
                                        <th scope="col" class="border-bottom-0">프로필</th>
                                        <th scope="col" class="border-bottom-0">아이디</th>
                                        <th scope="col" class="border-bottom-0">이름</th>
                                        <th scope="col" class="border-bottom-0" width="30%">email</th>
                                        <th scope="col" class="border-bottom-0">등록일</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <%
                                        List<MemberDTO> list = null;
                                        try {
                                            list = (List<MemberDTO>) request.getAttribute("adminList");
                                        } catch (Exception e) {
                                            e.printStackTrace();
                                        }
                                        if (list.isEmpty()) {
                                    %>
                                    <tr>
                                        <td colspan="6">등록된 회원이 없습니다.</td>
                                    </tr>
                                    <%

                                    } else {
                                        for (MemberDTO mb : list) {
                                    %>
                                    <tr>
                                        <td><%=mb.getRowNum()%></td>
                                        <td>
                                            <img class="user-avatar rounded-circle mr-2"
                                                 src="static/images/avatars/0.jpg" alt="User Avatar"
                                                 style="max-width: 2rem;">
                                        </td>
                                        <td><%=mb.getMb_id()%></td>
                                        <td><%=mb.getMb_name()%></td>
                                        <td>
                                            <div class="title" style="width: 500px">
                                                <%=mb.getMb_email()%>
                                            </div>
                                        </td>
                                        <td><%=mb.getMb_regdate()%></td>
                                    </tr>
                                    <%
                                            }
                                        }
                                    %>
                                    </tbody>
                                </table>
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
</body>
</html>