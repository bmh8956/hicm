<%--
  Created by IntelliJ IDEA.
  User: hi
  Date: 2024-01-16
  Time: 오후 4:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    session.invalidate();
%>
<script>
    window.onload = () => {
        let msg = new URL(location.href).searchParams.get('msg')
        let url = new URL(location.href).searchParams.get('url')
        // console.log(msg)
        if(msg == null || msg == 'null') {
            msg = "잘못된 접근입니다."
        }
        alert(msg);
        if(url == 'null' || url == null) {
            url = "/hicommunity/loginForm.adm";
        }
        document.location = url;
    }
</script>
