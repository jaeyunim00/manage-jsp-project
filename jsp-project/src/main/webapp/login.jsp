<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login form</title>
<link rel="stylesheet" href="https://unpkg.com/mvp.css"> 
</head>
<script type = "text/javascript">
	function check(){
		var form = document.loginForm;
		
		if (form.id.value == ""){
			alert("아이디를 입력해주세요!");
			form.id.focus();
			return false;
		} else if(form.passwd.value.lenght <1){
			alert("비밀번호는 입력해야 합니다");
			form.passwd.focus();
			return false;
		}
		form.submit();	
	}
</script>
<body>
	<header>
		<h1>HOME>로그인</h1>
	</header>
	<hr>
	<main>
		<p>로그인 화면
		<form name = "loginForm" action = "login_process.jsp" method = "post">	
			<div>
				<p> 아이디 : <input type = "text" name = id>
				<p> 비밀번호 : <input type = "password" name = "passwd">
				<p> <button type = "button" onclick = "check()">가입하기▶▶</button>
			</div>
		</form>
	</main>
</body>
</html>