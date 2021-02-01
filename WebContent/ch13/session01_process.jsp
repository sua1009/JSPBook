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
		request.setCharacterEncoding("utf-8");
		String user_id = request.getParameter("id");
		String user_pw = request.getParameter("passwd");
	
	
		if(user_id.equals("admin") && user_pw.equals("1234")) {
			session.setAttribute("userID", user_id);
			session.setAttribute("userPW", user_pw);
			session.setMaxInactiveInterval(20);
			out.println("세션 설정이 성공했습니다.");
			out.println(user_id + "님 환영합니다.");
		
		}else{
			out.println("세션 설정이 실패했습니다.");
		}
	%>
	
	<br>
	<a href="./session01.jsp">처음으로</a>
	<a href="./session02.jsp">session02 페이지로</a>
	<a href="./session03.jsp">session03 페이지로</a>
	<a href="./session06.jsp">session06 페이지로</a>
	
	
</body>
</html>