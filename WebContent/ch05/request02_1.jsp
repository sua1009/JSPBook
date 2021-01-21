<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<% 
	String hostValue = request.getHeader("host");
	String alValue = request.getHeader("accept-language");
	
	/* 
	out.print("호스트명 : " + hostValue + "<br>");
	out.print("설정된 언어 : " +  alValue + "<br>"); 
	*/
	%>
	<p>호스트명 : <%=hostValue %>
	<p>설정된 언어 : <%=alValue %>
</body>
</html>