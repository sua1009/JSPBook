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
	<%
		Connection conn = null;
		
		try{
			String url = "jdbc:mysql://localhost:3306/employees?serverTimezone=UTC&characterEncoding=UTF-8";
			String userId = "springb";
			String userPw = "asdf1234";
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url, userId, userPw);
			
			Statement stmt = conn.createStatement();
			String query = "SELECT * FROM employees WHERE first_name='Mario'";
			ResultSet rs = stmt.executeQuery(query);
			stmt.close();
			
			while (rs.next()){
				out.println(rs.getString("emp_no")+"<br>");
				out.println(rs.getString("first_name")+"<br>");
				out.println(rs.getString("last_name")+"<br>");
			}
			rs.close();
			stmt.close();
			
		}catch (SQLException e){
			out.println("데이터베이스 연결이 실패했습니다.<br>");
			out.println("SQLException : " + e.getMessage());
		}finally{
			if(conn != null){
				conn.close();
			}
		}
	%>
	
</body>
</html>