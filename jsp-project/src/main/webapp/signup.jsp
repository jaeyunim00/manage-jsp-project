<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://unpkg.com/mvp.css"> 
<title>회원가입</title>
</head>
<script type = "text/javascript"> 
function check() {
	
	var regExpId = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
	var regExpPasswd = /^[0-9]*$/;
	var regExpEmail = /^[0-9a-zA-z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
	
	var form = document.Member;
	
	var id = form.id.value;
	var passwd = form.passwd.value;
	var email = form.email.value;
	
	if(!regExpId.test(id)){
		alert("아이디는 문자로 시작해 주세요! ");
		form.id.focus();
		return false;
	}
	
	if(!regExpPasswd.test(passwd)){
		alert("비밀번호는 숫자만으로 입력해주세요! ");
		return false;
	}

	if(!regExpEmail.test(email)){
		alert("email 입력을 확인해 주세요!");
		return false;
	}
	
	form.submit();
}
</script>
<body>
	<header>
		<h1>Home > 회원 가입</h1>
	</header>
	<hr>
	<main>
		<form name = "loginForm" action ="insertDB.jsp" method = "post">	
			<div>
				<p> 아이디 : <input type = "text" name = "id" maxlength="20">
				<p> 비밀번호 : <input type = "password" name = "passwd">
				<p> 이메일 : <input type = "email" name = "email">
				<p> <button type = "reset">◀다시작성</button> <button onclick="check()">가입하기▶</button>
			</div>
		</form>
	</main>
</body>
</html>
