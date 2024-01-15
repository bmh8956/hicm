<%--
  Created by IntelliJ IDEA.
  User: hi
  Date: 2024-01-09
  Time: 오후 4:39
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
<select name="" id="sel">
<option value="0">테이블 선택</option>
</select>
<div id="cols">

</div>

<script>
    function get_cols() {
        let sel = document.getElementById('sel').value;
        if(sel == 0) {
            document.getElementById('cols').textContent = '';
            return false;
        }

        $.ajax({
            type: "post",
            url: "/hicommunity/all_cols.do",
            data: {
                tb : sel
            },
            success: function (res) {
                let cols;
                if(typeof res == 'string') {
                    cols = JSON.parse(res)
                } else {
                    cols = res;
                }
                console.log(cols)
                let field = '';
                for(let c of cols) {
                    let type = c.type.toLowerCase();
                    if(type == 'varchar2' || type == 'char' || type == 'long') {
                        type = "String";
                    } else if(type == 'number') {
                        type = 'int';
                    } else if(type == 'date') {
                        type = 'Date'
                    }
                    field += "private " + type + " " + c.name.toLowerCase() + ";<br>";
                }
                document.getElementById('cols').innerHTML = field;
            }
        });
    }

    function get_tb() {
        $.ajax({
            type: "post",
            url: "/hicommunity/all_tables.do",
            data: "",
            success: function (res) {
                let tb;
                if(typeof res == 'string') {
                    tb = JSON.parse(res)
                } else {
                    tb = res;
                }
                let sel = document.getElementById('sel')
                let i = 0;
                for (let k of tb) {
                    let opt = document.createElement('option');
                    opt.value = k.name;
                    opt.textContent = k.name;
                    sel.append(opt);
                    i++;
                }
                if (i === 1) {
                    get_cols();
                }
            }
        });
    }

    window.onload = () => {
        document.getElementById('sel').addEventListener('change', get_cols);
        get_tb();
    }
</script>
</body>
</html>
