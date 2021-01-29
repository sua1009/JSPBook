<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4> --- 세션을 삭제하기 전 ---</h4>
	
	<%
		request.setCharacterEncoding("utf-8");
		String userID = request.getParameter("id");
		String userPW =request.getParameter("passwd");
		
		session.setAttribute("userID",userID);
		session.setAttribute("userPW",userPW);
		
		out.println("설정된 세션 이름 userID :" + userID + "<br>");
		out.println("설정된 세션 값 userPW :" + userPW+ "<br>");
		
		if(request.isRequestedSessionIdValid() ==true){
			out.print("세션이 유효합니다.");
		}else{
			out.print("세션이 유효하지 않습니다.");
		}
		
		session.invalidate();
	%>
	<h4> ---세션을 삭제한 후 ---</h4>
	<%
		if (request.isRequestedSessionIdValid() == true){
			out.print("세션이 유효합니다.");
		}else{
			out.print("세션이 유효하지 않습니다.");
		}
	
	%>
		
</body>
</html>