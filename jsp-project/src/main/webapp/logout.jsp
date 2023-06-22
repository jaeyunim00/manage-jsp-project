<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://unpkg.com/mvp.css"> 
<title>lOGOUT</title>
</head>
<body>
	<% 
	
        session.invalidate();
    %>	
   	<header>
		<h1>HOME>로그 아웃</h1>
   	</header>
	<hr>
	<main>
		<p>세션을 종료후 로그아웃을 수행하였습니다
		<p>그동안 수고 많으셧습니다
		<form action = "main.jsp" method = "post">
			<input type = "submit" value = "메인화면을 이동▶">
		</form>
	</main>

</body>
</html>