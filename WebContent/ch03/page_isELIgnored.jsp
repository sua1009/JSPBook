<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page isELIgnored="true" %>
<html>
<head>

<title>Directives Tag</title>
</head>
<body>
	<%
	/* 	request.setAtrribute("RequestAtrribute", "request 내장 객체"); */
	%>
	
	${requestScope.RequestAttribute}

</body>
</html>