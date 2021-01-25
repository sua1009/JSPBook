<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form processing</title>
</head>
<body>
	<h3>회원 가입</h3>
	<form action="form06_process.jsp" name="member" method="post">
	
		<p> 아이디 : <input type="text" name="id"> <input type="button" value="아이디 중복 검사">
		<p> 비밀번호 : <input type= "password" name="passwd">
		<p> 이름 : <input type="text" name="name">	
		<p> 연락처 : <select name="phone1" id="phone1">
					<option value="010">010</option>
					<option value="011">011</option>
					<option value="016">016</option>
					<option value="017">017</option>
					<option value="019">019</option>
					</select><!-- <input type="text" maxlength="4" size="4" name="phone1"> --> -
		<input type="text" maxlength="4" size="4" name="phone2"> -
		<input type="text" maxlength="4" size="4" name="phone3">
		<p> 성별 : <input type="radio" name="sex" id="male" value="남성" checked><label for="male">남성</label>
				  <input type="radio" name="sex" id="female" value="여성"><label for="female">여성</label>
		<p> 취미 : 독서 <input type="checkbox" name="hobby" value="독서" checked>
				  운동 <input type="checkbox" name="hobby" value="운동">
				  영화 <input type="checkbox" name="hobby" value="영화">
		<br>
		<textarea name="comment" cols=30 rows=5 placeholder="가입 인사를 입력해주세요"></textarea><br>
		<p><input type="submit" value="가입하기">
		   <input type="reset" value="다시쓰기">
	
	</form>
</body>
</html>