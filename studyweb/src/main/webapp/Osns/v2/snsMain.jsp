<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="inc_header" %>
<meta charset="UTF-8">
<title>Osns</title>
</head>
<body>
<div class="container shadow w-75 mx-auto mt-5 p-5">
          <h3 class="text-info"><i class="fas fa-cat"> </i> OSNS :: HOME</h3>
          <hr>
          <h5 class="text-secondary"> > 아타라시이 뉴-스오 세카이노 민나토 공유하세요! </h5>
          <form method="post" action="#">
               <div class="input-group">
                   <button type="button" class="btn btn-outline-success">${param.username}</button>
                   <input type="text" name="msg" class="form-control">
                   <button type="submit" class="btn btn-warning">Tweet</button>
               </div>
          </form>
          <hr>
          <div class="m-3">
              <a href="#"><span class="badge rounde-pill bg-success">새로고침</span></a>
              <a href="snsLogin.jsp"><span class="badge rounde-pill bg-secondary">로그아웃</span></a>
          
          </div>
          
          <div>
              <ul class="list-gruop">
                   <li class="list-group-item list-group-item-action">찰밥이 :: 왕왕왕🐶🐶🐶🐶🐶🐶크르르르릉!! , 2023-07-17</li>
                   <li class="list-group-item list-group-item-action">곰탕이 :: 크헝? 크허허헝어엉?? , 2023-07-17</li>
                   <li class="list-group-item list-group-item-action">후추  :: 캉캉캉!!!캉캉!!, 2023-07-17 </li>
                   
              
              </ul>
          
          </div>
</div>
</body>
</html>