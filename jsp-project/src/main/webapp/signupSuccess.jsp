<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://unpkg.com/mvp.css"> 
<title>회원 등록 성공</title>
</head>
<body>
	<header>
		<h1>Home > 회원 등록 성공</h1>
	</header>
	<hr>
	<main>
		<p> 축하합니다!
		<p> 관리자인 경우만 로그인 수행이 가능합니다.
		<div style="display: flex; margin-right: 20px">
			<form action = "membership.jsp" method = "post">
			<input type = "submit" value = "회원공간 접속하기 ▶">
			</form>
			<form action = "login.jsp" method = "post">
			<input type = "submit" value = "관리자 로그인 ▶"> 
			</form>
		</div>
	</main>
</body>
</html>	