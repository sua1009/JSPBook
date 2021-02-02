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
<%@ include file ="dbconn.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	
	Statement stmt = null;
	
	try {
		String query = "delete from member where id =";
		query += id;
		
		stmt = conn.createStatement();
		int result = stmt.executeUpdate(query);
		out.println("member 테이블에 " + result + "행 delete 성공했습니다.");
	}catch(SQLException ex){
		out.println("delete가 실패했습니다.<br>");
		out.println("SQLException : " + ex.getMessage());
	}finally{
		if(stmt !=null)
			stmt.close();
		if(conn != null)
			conn.close();	
	}
%>
</body>
</html>