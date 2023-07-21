<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생조회</title>
</head>
<body>
<h2>겸둥이들 조회 서비스</h2>
<hr>
<form name="sform" method="get" action="/studyweb/student">
<input name="action" type="hidden" value="search">
태어난순서: <input type="text" name="id" placeholder="태어난 순번을 입력하세요">
<button type="submit">검색</button>
<a href="/studyweb/student?action=all"><button type="button">애들 다보기</button></a>
</form>

</body>
</html>