<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>요청 파라미터 이름 </th>
			<th>요청 파라미터 값 </th>
		</tr>
		<%
		request.setCharacterEncoding("utf-8");
		
		Enumeration paramNames = request.getParameterNames();
		
		/* 
		반복문을 통해서 배열에 저장된 모든 내용을 확인
		배열에 남은 내용이 없을 때까지 반복 실행하면서 확인
		*/
		while(paramNames.hasMoreElements()){
			/* 배열에 저장된 데이터를 하나 출력 */
			String name= (String)paramNames.nextElement();
			out.println("<tr><td>" + name + "</td>\n");
			/* 출력된 name을 가직 request 객체에서 값을 하나 출력함  */
			String paramValue= request.getParameter(name);
			out.println("<td>" + paramValue + "</td></tr>\n");
			}
		%>
	</table>
</body>
</html>