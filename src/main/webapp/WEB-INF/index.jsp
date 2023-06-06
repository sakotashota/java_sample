<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ログインページ</title>
</head>
<body>
<span class="label label-danger">${Error}</span>
<form action="/user/login" method="post">
    <div class="form-group">
        <label for="title">ユーザー名</label>
        <input class="form-control" name="user-name" id="title"><br>
        <label for="title">パスワード</label>
        <input type="password" class="form-control" name="pass" id="input_pass">
    </div>
    <button type="submit">送信</button>
</form><br>
<h2>新規登録は<a href="/user/signup">こちら</a>から。</h2>
</body>
</html>