<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Draw Check</title>
</head>
<body>
<%@ include file="dbconn.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
	
	String id = request.getParameter("userID");
	
	ResultSet rs = null;
	Statement stmt = null;

	try{
		String sql = "select id from member where id  = '" + id + "'";
		stmt = conn.createStatement();
		rs = stmt.executeQuery(sql);
		
		if(rs.next()){
			String rId = rs.getString("id");
			
			if(id.equals(rId)){
				sql = "delete from member where id = '" + id + "'";
				stmt = conn.createStatement();
				stmt.executeUpdate(sql);
				response.sendRedirect("drawSuccess.jsp");
			} else{
				response.sendRedirect("drawerr.jsp");
			}
		} else{
			response.sendRedirect("drawerr.jsp");
		}
	}catch(SQLException ex){
		out.println("삭제 실패");
		out.println("SQLException: " + ex.getMessage());
	}finally{
		if(rs != null){
			rs.close();
		}
		if(stmt != null){
			stmt.close();
		}
		if(conn != null){
			conn.close();
	}
}
%>