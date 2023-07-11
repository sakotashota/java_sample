<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>ツイート編集</title>
</head>
<body>
<!-- <span class="label label-danger">${Error}</span> -->
<form action="/mutter/edit" method="post">
    <div class="form-group">
        <!-- <label for="title">つぶやき内容</label><br> -->
        <!-- <input type="text" class="form-control" name="text" hidden id="title"> -->
        <textarea name="text"></textarea>
    </div>
    <button type="submit">送信</button>
</form>
</body>
</html> 