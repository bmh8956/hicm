<%--
  Created by IntelliJ IDEA.
  User: hi
  Date: 2023-12-12
  Time: 오후 2:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<textarea id="test" style="width: 1000px; height: 500px">

</textarea>
<button type="button" id="btn">test</button>
<br>
<textarea id="result" style="width: 1000px; height: 500px">

</textarea>
<script>
    let test = (txt) => {
        let res = []
        let line = txt.split('\n')
        let i = 0;
        let j = 0;
        let k = 0;
        let table_name = '';
        let table_comment = '';

        for(let li of line) {
            let re = li.split('\t\t');
            if(re[0] != '') {
                res.push(re);
                if(res[i][0] != '') {
                    if(k == 0) {
                        table_name = res[i][0];
                    } else if(k == 1) {
                        table_comment = res[i][0];
                    }
                    k++;
                }
                if(res[i][0] == '컬럼 이름') {
                    j = i;
                }
                i++;
            }
        }
        // console.log(res)
        // console.log("========================")
        let result = res.filter((num, idx) => {
            return idx > j;
        });
        // console.log(table_name)
        console.log(result)
        let val = 'create table ' + table_name + ' (\n'
        let val2 = '';
        i = 0;
        for(let r of result) {
            if(r[2] == 'int' || r[2] == 'INT') {    //
                r[2] = 'number';
            }
            if(r[4].trim() != 'sysdate') {
                r[4] = '\'' + r[4] + '\'';
            }
            val += r[0] + ' ' + r[2] + ' ';
            val += (i == 0)? ' generated always as identity not null constraint PK_' + table_name + '_' + r[0] + ' primary key' : ' ';
            val += (r[4].trim().length > 0 && r[4].trim() != '\'\'')? 'default ' + r[4] + ' ' : ''
            val += (r[3] != '' && i > 0)? r[3] + ' ' : ''
            val += ((i + 1) < result.length)? ',\n'  : '\n';

            if(i == 0) {
                val2 += 'comment on table ' + table_name + ' is \'' + table_comment + '\';\n';
            }
            val2 += 'comment on column ' + table_name + '.' + r[0] + ' is \'' + r[1] + '\';\n';

            i++;
        }
        let select = '\n SELECT * from ' + table_name + ';';
        val += ');\n'
        val += val2;
        val += select;

        let res_txt = document.getElementById('result')
        res_txt.value = val;

    }


    window.onload = () => {
        let btn = document.getElementById('btn')
        let txt = document.getElementById('test')
        btn.addEventListener('click', (e) => {
            test(txt.value);
        })
    }
</script>
</body>
</html>
