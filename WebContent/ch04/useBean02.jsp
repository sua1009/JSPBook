<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
</head>
<body>
<!-- useBean 액션 태그를 사용하는 것은 기본 자바문법에서 클래스 생성하는 것과 동일함 -->
	<jsp:useBean id="bean" class="ch04.com.dao.Calculator" /> 
	
	<%-- <%!
	 Calculator cal = new Calculator();
	%> --%>
	<%
		int m = bean.process(5);
		out.println("5의 3제곱 : " + m);
	%>
	<%-- <%
	int n = cal.process(5);
		out.print("5의 제곱 : " + n);
	%> --%>
	
</body>
</html>