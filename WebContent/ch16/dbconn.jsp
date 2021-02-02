
<%@ page import="java.sql.*" %>

<%
	Connection conn = null;

	String url = "jdbc:mysql://localhost:3306/jspbookdb?serverTimezone=UTC&characterEncoding=utf-8";
	String userId = "springb";
	String userPw = "asdf1234";
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	conn = DriverManager.getConnection(url,userId,userPw);


%>
