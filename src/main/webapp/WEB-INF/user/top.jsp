<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>TOP画面</title>
</head>
<body>
${currentUser.name}さんこんにちは。
<a href="/mutter/insert" class="btn mutter">つぶやく</a>
<a href="/user/logout">ログアウト</a>
</body>
</html>