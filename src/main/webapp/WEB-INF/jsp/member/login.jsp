<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 폼</title>
</head>
<body>

 <div id="container">
   
   <h3>로그인</h3>  
   <form id="loginAction" action="/login/action" method="post">
      
      <div class="loginForm">
        <input type="text" id="mem_id" name="mem_id" placeholder="아이디">
        <input type="password" id="mem_pw" name="mem_pw" placeholder="비밀번호">
        <label> 
            <input type="checkbox" id="keppLogin" name="memberCookie">로그인 유지 
            <input type="checkbox">아이디 저장하기
        </label>
        <button type="submit" id="submitBtn">로그인</button> 
      </div>
        

   </form>
 
 
 
 
 
 
 </div>

</body>
</html>