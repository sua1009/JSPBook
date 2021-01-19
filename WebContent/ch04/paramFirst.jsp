<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
</head>
<body>
	<h3>이 파일은 paramFrist.jsp입니다.</h3>
	<jsp:include page="paramSecond.jsp">
		<jsp:param name="date" value="<%=new java.util.Date() %>" />
	</jsp:include>
	<p> Java Server Page</p>
</body>
</html>