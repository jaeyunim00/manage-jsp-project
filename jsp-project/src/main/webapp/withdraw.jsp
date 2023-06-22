<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="https://unpkg.com/mvp.css"> 
    <meta charset="UTF-8">
    <title>회원 탈퇴</title>
</head>
<body>
	<header>
		<h1>HOME>회원 탈퇴하기</h1>
	</header>
	<hr>
	<main>
		<form action="drawCheck.jsp" method="post">
	     <p> <label for="userID">아이디:</label>
	     <p> <input type="text" id="userID" name="userID" required><br>
	        <input type="submit" value="회원 탈퇴">
	    </form>
	</main>
</body>
</html>
