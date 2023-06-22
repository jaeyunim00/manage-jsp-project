<%@ page import ="java.sql.*"%>
<%
	request.setCharacterEncoding("UTF-8");

	Connection conn = null;
	
	String url = "jdbc:mysql://localhost:3306/jspbookdb";
	String user = "root";
	String password = "Imjaeyun35469!!";
	
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(url, user, password);
%>

