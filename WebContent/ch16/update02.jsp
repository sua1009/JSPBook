<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="update02_process.jsp" method="post">
		<p> 이름 : <input type="text" name="userName">
		<p> 비밀번호 : <input type="text" name="userPass">
		<p> 아이디 : <input type="text" name="id">
		
		<input type="submit" name="수정">
		<input type="reset" name="취소">
	</form>
</body>
</html>