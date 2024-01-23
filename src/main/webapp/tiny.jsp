<%--
  Created by IntelliJ IDEA.
  User: hi
  Date: 2024-01-17
  Time: 오후 12:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tinymce</title>
    <script src="https://cdn.tiny.cloud/1/no-api-key/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
    <script src="tiny.js"></script>
</head>
<body>
<textarea name="tiny" id="content" cols="30" rows="10"></textarea>
<button type="button" onclick="test();">test</button>
<div id="dv"></div>

<script>
    let test = () => {
        let content = tinymce.get("content").getContent();
        console.log(content)
        document.getElementById("dv").innerHTML = content
    }
</script>
</body>
</html>