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
	<%@ include file = "dbconn.jsp" %>
	
	<%
		request.setCharacterEncoding("utf-8");
		
		String userName = request.getParameter("userName");
		String userPass = request.getParameter("userPass");
		int id = Integer.parseInt("id");

		PreparedStatement pmt = null;
		
		try {
			String query = "update member set name =?, passwd=? where id = ? ";
			
			pmt = conn.prepareStatement(query);
			pmt.setString(1, userName);
			pmt.setString(2, userPass);
			pmt.setInt(3, id);
		
			int result = pmt.executeUpdate();
			out.println("member 테이블에 데이터를 " + result + "개 추가하였습니다.");
			
		}catch(SQLException ex){
			out.println("member 테이블에 데이터 update를 실패했습니다.");
			out.println("SQLException : " + ex.getMessage());
		}finally{
			if(pmt != null){
				pmt.close();
			}
			
			if(conn != null){
				conn.close();
			}
		}
	
	%>
</body>
</html>