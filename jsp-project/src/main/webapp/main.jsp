<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://unpkg.com/mvp.css"> 
<title>메인 화면</title>
</head>
<body>
	<header>
		<h1>메인 페이지!</h1>
	</header>
	<main>
	<form action = "login.jsp" method = "post">
		<input type = "submit" value = "◀관리자 접속하기">
	</form>
	<form action = "signup.jsp" method = "post">
		<input type = "submit" value = "사용자 접속하기 ▶">
	</form>
	</main>
</body>
</html>
