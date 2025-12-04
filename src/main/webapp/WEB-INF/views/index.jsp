<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>메모 앱</title>
</head>
<body>
<p>메모 조회 및 작성</p>

<%= request.getAttribute("memos") %>

<form method="post">
    <input name="content" placeholder="메모 내용"><br>
    <button>작성</button>
</form>
</body>
</html>