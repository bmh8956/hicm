<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="member.MemberDTO" %>
<%
    MemberDTO admin = null;
    String msg = null;
    String url = null;
    try {
        admin = (MemberDTO) session.getAttribute("admin");
        if (admin == null) {
            msg = "로그인이 필요한 페이지입니다.";
            url = "/hicommunity/loginForm.adm";
//                response.sendRedirect("http://localhost:8181/hicommunity/admin/fix/alert.jsp?msg=로그인이 필요한 페이지입니다.&url=/hicommunity/main.adm");
        }
    } catch (Exception e) {
        msg = "로그인이 필요한 페이지입니다.";
        url = "/hicommunity/loginForm.adm";
//            response.sendRedirect("http://localhost:8181/hicommunity/admin/fix/alert.jsp?msg=로그인이 필요한 페이지입니다.&url=/hicommunity/main.adm");
    }
%>
<script>
    window.onload = () => {
        // let msg = new URL(location.href).searchParams.get('msg')
        // let url = new URL(location.href).searchParams.get('url')
        let msg = '<%=msg%>';
        let url = '<%=url%>';
        if (!msg == 'null') {
            alert(msg);
        }
        if(!url == 'null') {
            // location.href = url
        } else {
            // location.href = "/hicommunity/loginForm.adm";
        }
    }
</script>