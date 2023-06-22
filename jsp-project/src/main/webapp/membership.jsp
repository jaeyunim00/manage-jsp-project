<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://unpkg.com/mvp.css"> 
<title>Insert title here</title>
</head>
<body>
	<header>
		<h1>Home > 회원 전용 공간</h1>
	</header>
	<hr>
	<main>
		<p> 반갑습니다!
		<p> 여기서 회원 전용 공간입니다
		<p> 회원을 탈퇴하려면 버튼을 눌러주세요
		<form action = "main.jsp" method = "post">
			<input type = "submit" value = "◀메인화면">
		</form>
		<form action = "withdraw.jsp" method = "post">
			<input type = "submit" value = "회원탈퇴하기▶">
		</form>
	</main>
</body>
</html>