<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session</title>
</head>
<body>
	<%
		for(int i = 0; i < 5; i++){
			String name = "sessionName"+ i;
			String value = name + "value(" + i + ")";
			session.setAttribute(name, value);
		}
	%>
	
	<a href = "./session03.jsp">session03 으로 이동</a>
</body>
</html>