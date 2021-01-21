<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Implicit Objects</title>
</head>
<body>
<!-- html에서 form 태그의 역할을 사용자가 입력한 데이터를 서버로 전송 -->
	<form action="process.jsp" method ="post">
	<p>
	<!-- form의 사용자 입력 데이터를 request 객체에 담아 전송 시 서버에서 알아볼 수 있는 
	구분자 역할을 input태그의 name 속성이 함  -->
		이름  : <input type="text" name="name">
		<input type="submit" value="전송">
	</form>

</body>
</html>