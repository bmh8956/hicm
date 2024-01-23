<%--
  Created by IntelliJ IDEA.
  User: hi
  Date: 2024-01-17
  Time: 오후 4:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원 가입</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
        }

        label {
            display: block;
            margin-bottom: 8px;
        }

        input {
            width: 100%;
            padding: 8px;
            margin-bottom: 16px;
            box-sizing: border-box;
        }

        select {
            width: 100%;
            padding: 8px;
            margin-bottom: 16px;
            box-sizing: border-box;
        }

        button {
            background-color: #4caf50;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
    </style>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"
            integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<body>
<form action="" method="post" id="frm">
    <label for="id">아이디:</label>
    <input type="text" id="id" name="mb_id" required>

    <label for="password">비밀번호:</label>
    <input type="password" id="password" name="mb_pw" required>

    <label for="name">이름:</label>
    <input type="text" id="name" name="mb_name" required>

    <label for="phone">전화번호:</label>
    <input type="text" id="phone" name="mb_phone" required>

    <label for="email">이메일:</label>
    <input type="email" id="email" name="mb_email">

    <label for="gender">성별:</label>
    <select id="gender" name="mb_gender">
        <option value="M">남</option>
        <option value="W">여</option>
    </select>

    <label for="datepicker">
        <input type="text" name="mb_birth" id="datepicker" readonly>
    </label>

    <button type="submit">가입하기</button>
</form>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="admin/static/datepicker.js"></script>

<script !src="">
    $(function () {
        $("#datepicker").datepicker({
            changeYear : true,
            changeMonth : true,
            yearRange: 'c-100:c+10',
            maxDate : 0
        });
    })

    let join = (frm) => {
        let data = new FormData(frm);
        let obj = {}
        for(let k of data.keys()) {
            obj[k] = data.get(k);
        }
        $.ajax({
                type: "post",
                url: "/hicommunity/join.adm",
                data: obj,
                success: function (res) {
                    console.log(res)
                    if(typeof res === 'string') {
                        res = JSON.parse(res)
                    }
                    if(res.msg == 'success') {
                        alert("회원가입에 성공했습니다.")
                        location.href = "/hicommunity/loginForm.adm";
                    } else {
                        alert("회원가입 처리도중 오류가 발생했습니다.")
                        location.reload();
                    }
                }
            });
    }

    let phoneNumber = (tag) => {
        tag.maxLength = 13
        tag.value = tag.value.replace(/[^0-9]/g, "");
        return tag.value.replace(
            /(^02.{0}|^01.{1}|[0-9]{3})([0-9]+)([0-9]{4})/,
            "$1-$2-$3"
        );
    }

    window.onload = () => {
        let frm = document.getElementById("frm");
        frm.addEventListener('submit', function (e) {
            e.preventDefault();
            join(frm);
        })
        document.getElementById('phone').addEventListener('input', function(e) {
            e.target.value = phoneNumber(e.target)
        })
    }
</script>
</body>
</html>