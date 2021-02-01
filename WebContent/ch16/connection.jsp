<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Connection</title>
</head>
<body>
	<%
		/* 데이터베이스 연결 객체 */
		Connection conn = null;
	
		try{
			/* 데이터베이스 접속 주소 */
			/* jdbc : 데이터베이스 접속 드라이버 종류 */
			/* mysql : 데이터베이스 종류 */
			/* localhost : 데이터베이스 접속 주소 (ip 번호, url)둘다 사용가능*/
			/* 3306 : 데이터베이스 접속 포트 */
			/* employees : 사용할 데이터 베이스 이름 */
			/* serverTimezone : 서버 시간 지역 구분 */
			/* characterEncoding : 문자셋 */
			String url = "jdbc:mysql://localhost:3306/employees?serverTimezone=UTC&characterEncoding=utf-8";
			String userId = "springb";
			String userPw = "asdf1234";
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url, userId, userPw);
			out.println("데이터베이스 연결이 성공했습니다.");
		}catch(SQLException ex){
			out.println("데이터베이스 연결이 실패했습니다. <br>");
			out.println("SQLException : " + ex.getMessage());
		}finally{
			if (conn != null)
				conn.close();
			
			
		}
	%>
</body>
</html>