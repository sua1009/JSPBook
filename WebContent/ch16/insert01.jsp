<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<form action ="insert01_process.jsp" method="post">
		<p> 아이디 : <input type="text" name="id">
		<p> 비밀번호 : <input type="password" name="passwd">
		<p> 이름 : <input type="text" name="name">
		<p> <input type="submit" name="전송">
		</form>
		
		<!-- insert01.jsp를 기반으로 하여 update01.jsp및 delete01.jsp도 생성하여
			데이터를 수정 및 삭제까지 진행하세요  -->
</body>
</html>