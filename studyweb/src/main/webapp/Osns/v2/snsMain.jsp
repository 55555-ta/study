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
          <form method="post" action="${baseUrl}">
              <input type="hidden" name="action" value="write" />
               <div class="input-group">
                   <button type="button" class="btn btn-outline-success">@${user}</button>
                   <input type="text" name="msg" class="form-control">
                   <button type="submit" class="btn btn-warning">Tweet</button>
               </div>
          </form>
          <c:if test= "${error != null}">
                      <div class="alert alert-danger alert-dismissble fade show mt-3">
                         에러 발생: ${error}
                         <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                      </div>
           </c:if>
          <hr>
          <div class="m-3">
              <a href="${baseUrl}?action=list"><span class="badge rounde-pill bg-success">새로고침</span></a>
              <a href="${baseUrl}?action=logout"><span class="badge rounde-pill bg-secondary">로그아웃</span></a>
          
          </div>
          
          <div>
              <ul class="list-gruop">
                  <c:forEach var="m" items="${msgList}" varStatus="s">
                    <li class="list-group-item list-group-item-action d-flex justify-content-between align-items-center">[${s.count}]${m.name} :: ${m.msg}, ${m.date} 
                    <a href="${baseUrl}?action=del&id=${s.index}"><span class="badge bg-secondary">&times;</span></a>
                    </li>
                    
                  </c:forEach>

                   
              
              </ul>
          
          </div>
</div>
</body>
</html>