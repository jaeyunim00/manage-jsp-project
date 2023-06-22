<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://unpkg.com/mvp.css"> 
<title>Insert title here</title>
</head>
<body>
<%@ include file="dbconn.jsp" %>
	<%
		String sql = "select * from member";
		
		Statement stmt = null;
		ResultSet rs = null;
		
		stmt = conn.createStatement();
		rs = stmt.executeQuery(sql);
	%>
	<main>
		<table>
			<tr>
				<th>ID</th>
				<th>비밀번호</th>
				<th>이메일</th>
			</tr>
			<%while(rs.next()){%>
			<tr>
				<td><%=rs.getString("id")%></td>
				<td><%=rs.getString("passwd")%></td>
				<td><%=rs.getString("email")%></td>
			</tr>
			<%}%>
		</table>
		<form action = "withdraw.jsp" method = "post">
			<input type = "submit" value = "회원탈퇴시키기 ▶">	
		</form>
	</main>
</body>
</html>