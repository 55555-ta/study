<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 정보</title>
</head>
   <body>
  
    <h2>전체 학생 목록</h2>
    <hr>
    <table border="1" style="width:300px">
    <tr><th>학번</th><th>이름</th><th>학과</th></tr>
    
    <c:forEach items="${studentList}" var="s">
    	<tr><td>${s.id}</td><td>${s.name}</td><td>${s.dept}</td></tr>
    </c:forEach>
    
    </table>
    </body>
</html>