<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page errorPage = "errorPage_error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exception Page</title>
</head>
<body>
	<!-- 클라이언트로부터 요청 사항이 없기 때문에 변수 name은 값이 없음 -->

	<%--  같은 내용
	<%
	String name=request.getParameter("name");
	name = name.toUpperCase();
	%>
	<p> name 파라미터 : <%=name %> 
	--%>
	<p> name 파라미터 : <%=request.getParameter("name").toUpperCase() %></p>
</body>
</html>