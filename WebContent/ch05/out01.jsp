<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		out.println("오늘의 날짜 및 시각 " + "<br>");
		//out.println(java.util.Calendar.getInstance().getTime());
		//import를 이용해서 줄여서 사용가능 
		out.println(Calendar.getInstance().getTime());
	%>
</body>
</html>