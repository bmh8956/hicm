<%--
  Created by IntelliJ IDEA.
  User: hi
  Date: 2024-01-12
  Time: 오후 5:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //    session.removeAttribute("admin");
%>
<html>
<head>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"
            integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            width: 300px;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            display: grid;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            margin-bottom: 8px;
        }

        input {
            padding: 8px;
            margin-bottom: 16px;
        }

        button {
            padding: 10px;
            background-color: #4caf50;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
        }
    </style>
    <title>Title</title>
</head>
<body>
<div class="container">
    <form id="frm">
        <h2>Login</h2>
        <label for="username">Username:</label>
        <input type="text" class="f" id="username" name="mb_id" required>

        <label for="password">Password:</label>
        <input type="password" class="f" id="password" name="mb_pw" required>

        <button type="submit" id="btn">login</button>
    </form>
<%--    <%=request.getAttribute("cnt")%>--%>
    <%
        int cnt = (int) request.getAttribute("cnt");
        if(cnt == 0) {
    %>
        <button type="button" onclick="location.href='/hicommunity/joinForm.adm'">회원가입</button>
    <%
        }
    %>
</div>
<%--<form id="frm">--%>
<%--id : <input type="text" name="id"><br>--%>
<%--pw : <input type="password" name="pwd"><br>--%>
<%--<button type="submit" id="btn">login</button>--%>
<%--</form>--%>
<script>
    let login = () => {
        let param = new URL(location.href).searchParams;
        let url = param.get("url");
        let frm = document.getElementById("frm")
        let formData = new FormData(frm);
        let ob = {}

        for (let k of formData.keys()) {
            ob[k] = formData.get(k)
        }
        ob.mb_auth = 'admin'
        ob.loginType = true;

        $.ajax({
            type: "POST",
            url: "/hicommunity/login.adm",
            data: ob,
            success: function (res) {
                console.log(typeof res)
                if (typeof res == 'string') {
                    res = JSON.parse(res)
                }
                if (res.msg === "success") {
                    console.log("success")
                    let admin = JSON.parse(res.admin)
                    location.href = "/hicommunity/main.adm"
                } else {
                    alert("아이디 또는 비밀번호가 잘못되었습니다.")
                }
            }
        });
    }

    window.onload = () => {
        let frm = document.getElementById('frm');
        frm.addEventListener('submit', function (e) {
            e.preventDefault();
            login();
        });

    }
</script>
</body>
</html>

