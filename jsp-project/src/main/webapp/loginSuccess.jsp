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
		<h1>HOME>관리자 로그인</h1>
	</header>
	<hr>
	<main>
		<p>새로운 세션 생성 성공
		<p>관리자[root]님 입장</p>
		<form action = "memberList.jsp" method = "post">
			<input type = "submit" value = "◀등록회원 관리하기">
		</form>
		<form action = "logout.jsp" method = "post">
			<input type = "submit" value = "로그아웃 ▶">	
		</form>
	</main>
</body>
</html>