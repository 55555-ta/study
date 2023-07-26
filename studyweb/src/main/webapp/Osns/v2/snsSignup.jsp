<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="inc_header" %>
<meta charset="UTF-8">
<title>회원 가입</title>
</head>
<body>
  <div class="waraper">
      <div class="title"><h1 style="font-size:21px">회원가입</h1></div>
    <form method="post" action="joinAction.jsp">
      <div class="email">
         이메일 : <input id="email" type="text" placeholder="이메일을 입력하세요">
         <div id="emailError" class="error"></div>
      </div>
      <div class="name">
        이름 :  <input id="name" type=text placeholder="이름을 입력하세요">
         <div id="nameError" class="error"></div>  
      </div>
      <div class="password">
        비밀번호 :  <input id="password" type="password" placeholder="비밀번호를 입력하세요">
         <div id="passwordError" class="error"></div> 
      </div>
      <div class="passwordCheck">
        비밀번호 확인 : <input id="passwordCheck" type="password" placeholder="비밀번호를 다시 입력하세요">
         <div id="passwordCheckError" class="error"></div>  
      </div>
      <div class="phone"> 
      전화번호 : 
         <input id="phone1" type=text size="1" maxlength="3" oninput="changePhone1()">
         <input id="phone2" type=text size="3" maxlength="4" oninput="changePhone1()">
         <input id="phone3" type=text size="3" maxlength="4" oninput="changePhone1()">
      </div>
      <div class="gender">
         <input id="gender_man" type="radio" name="gender">남성
         <input id="gender_woman" type="radio" name="gender">여성
         <div id="genderError" class="error"></div>
      </div>
      <div class="line">
      <hr>
      </div>
      <div class="signUp">
         <button id="signUp" type="submit">가입하기</button>   
      </div>
    </form>   
  </div>
</body>
</html>