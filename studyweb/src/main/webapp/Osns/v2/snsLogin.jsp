<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="inc_header" %>
<meta charset="UTF-8">
<title>Osns 로그인</title>
</head>
<body>
<div class="container w-75 mx-auto mt-5 p-5 shadow">
           <h3 class="text-info"><i class="fas fa-cat"> </i> OSNS :: 로그인</h3>
           <hr>
           <h5 class="text-secondary">> 아타라시이 뉴-스오 세카이노 민나토 공유하세요! </h5>
           <form name="form1" method="get" action="snsMain.jsp">
               <div class="input-group">
                   <input class="form-control" type ="text" name="username" placeholder="아이디를 입력하세요...">
                   <button class="btn btn-success" type="submit">로그인</button>
                   </div>
                   </form>
                   <hr>
                   <div>.
                   
                       <a href="#"><span class="badge counded-pill bg-success">가입하기</span></a>
                       <a href="#"><span class="badge counded-pill bg-secondary">비밀번호 찾기</span></a>
                       <a href="#"><span class="badge counded-pill bg-info">문의하기</span></a>
                   </div>
</div>

</body>
</html>