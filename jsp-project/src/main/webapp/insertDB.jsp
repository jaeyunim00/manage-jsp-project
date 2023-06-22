<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="dbconn.jsp" %>
<%
	request.setCharacterEncoding("utf-8");

    String userID = request.getParameter("id");
    String passwd = request.getParameter("passwd");
   	String email = request.getParameter("email");
   	
    Statement stmt = null;
  

    
    try{
    	String sql = "INSERT INTO member(id, passwd, email) VALUES('" + userID +"','" + passwd + "','" + email + "')";
    	stmt = conn.createStatement();
    	stmt.executeUpdate(sql);
    	out.println("Member 테이블 삽입 성공");
    	response.sendRedirect("signupSuccess.jsp");
    }catch(SQLException ex){
    	out.println("Member 테이블 삽입 실패");
    	out.println("SQLException: " + ex.getMessage());
    }finally{
    	if(stmt != null){
    		stmt.close();
    	}
    	if(conn != null){
    		conn.close();
    	}
    }
%>
</body>
</html>