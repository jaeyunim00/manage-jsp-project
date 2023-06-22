<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	
	if(id.equals("root") && passwd.equals("1234")){
		session.setAttribute("root_id", id);
		session.setAttribute("root_pwd", passwd);
		response.sendRedirect("loginSuccess.jsp");
	}else{
		response.sendRedirect("loginErr.jsp");
	}
%>
</body>
</html>