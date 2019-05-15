<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/head.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
<script src='https://code.jquery.com/jquery-3.3.1.min.js'></script>
<script type="text/javascript">
 		
	// document.폼이름.텍스트상자이름.속성
	//					type name value
	// document.폼이름.텍스트상자이름.메소드()
	//				focus() blur() select()
	function validate() {
		var re = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		// 이메일이 적합한지 검사할 정규식
	
		var id = document.getElementById("id");
		var password = document.getElementById("password");
		var confirmPassword = document.getElementById("confirmPassword");
		var name = document.getElementById("name");
		var address = document.getElementById("address");
		var tel = document.getElementById("tel");
		var phone = document.getElementById("phone");
		var email = document.getElementById("email");
	
		if(register.id.value == ''){
		alert('아이디를 입력하세요');
		register.id.focus(); // 텍스트 창의 경우, 커서를 위치시켜 바로 입력이 가능합니다.
		return false;
		}
		
		if(register.id.value.length < 4 || register.id.value.length > 10){
		alert('아이디는 4~10자 사이로 입력하세요');
		register.id.value = ""; // 작성했던 값을 모두 지워준다
		register.id.focus();
		return false;
		}
		
		if(register.password.value == ''){
		alert('패스워드를 입력하세요');
		register.password.focus();
		return false;
		}
		
		if(register.confirmPassword.value == '' || register.confirmPassword.value != register.password.value){
		alert('패스워드를 정확히 입력해주세요');
		register.confirmPassword.value = "";
		register.confirmPassword.focus();
		return false;
		}
		
		if(register.name.value == ''){
		alert('이름을 입력하세요');
		register.name.focus();
		return false;
		}
		
		if(register.address.value == ''){
		alert('주소를 입력하세요');
		register.address.focus();
		return false;
		}
		
		if(register.tel.value == ''){
		alert('일반전화를 입력하세요');
		register.tel.focus();
		return false;
		}
		
		if(register.phone.value == ''){
		alert('휴대전화를 입력하세요');
		register.phone.focus();
		return false;
		}
		
		if(register.email.value == ''){
		alert('이메일을 입력하세요');
		register.email.focus();
		return false;
		}
		
		if(!check(re, email, "적합하지 않은 이메일 형식입니다.")){
		return false;
		}
	
		alert("회원가입이 완료되었습니다.");
	}

	function check(re, what, message){
	if(re.test(what.value)){
	return true;
	}
	alert(message);
	what.value = "";
	what.focus();
	// return false;
	}
	</script>

<script>
	// 아이디 중복확인 버튼을 누르면 에이젝스 코드를 실행해라
	$(function(){
		$('#idCheck').click(function(){ //실행내용
			$.ajax({
				url : "${path}/member/idCheck",
				type : "POST",
				data : {
					"id":$('#id').val()
					},
				success : function(data){
					if(data == 1){
						alert("이미 존재하는 아이디입니다.");
						
						$("#submit").attr("disabled", "disabled");
						
					} else {
						alert("사용가능한 아이디입니다.");
						
						$("#submit").removeAttr("disabled");
					}
				}
			});	// ajax 끝
		}); // function() 끝
	});
</script>
</head>

<body>
	<h3>회원 가입</h3>
	<form name="register" onsubmit="return validate();"
		action="${path}/member/register" method="post">
		<p>
			<label for="id">아이디</label> <input type="text" id="id" name="id" />
			<button type="button" id="idCheck" name="idCheck" onclick="test()">아이디
				중복확인</button>
		</p>
		<p>
			<label for="password">비밀번호</label> <input type="password"
				id="password" name="password" />
		</p>
		<p>
			<label for="confirmPassword">비밀번호 확인</label> <input type="password"
				id="confirmPassword" name="confirmPassword" />
		</p>
		<p>
			<label for="name">이름</label> <input type="text" id="name" name="name" />
		</p>
		<p>
			<label for="address">주소</label> <input type="text" id="address"
				name="address" />
		</p>
		<p>
			<label for="tel">일반전화</label> <input type="text" id="tel" name="tel" />
		</p>
		<p>
			<label for="phone">휴대전화</label> <input type="text" id="phone"
				name="phone" />
		</p>
		<p>
			<label for="email">이메일</label> <input type="text" id="email"
				name="email" />
		</p>
		<p>
			<button type="submit" id="submit">가입하기</button>
			<button type="reset" id="reset">다시쓰기</button>
		</p>
	</form>
</body>
</html>