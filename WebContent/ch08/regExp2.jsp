<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function checkForm(){
		var str =document.frm.name.value;
		var regExp = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
		if (!regExp.test(str)){
			alert("이름은 숫자로 시작할 수 없습니다.");
			return;
			}
		var str = document.frm.age.value;
		regExp = /^\d{3}-\d{3,4}-\d{4}$/;
		/*  /^[0-9]{3}-[0-9]{3,4}-[0-9]{4}$/  */
		if(!regExp.test(str)){
			alert("나이는 숫자만 입력할 수 있습니다.");
			return;
			} 

		var str = document.frm.phone.value;
		regExp = /^[0-9]

		if(!regExp.test(str)){
			alert("전화번호는 숫자로만 형식에 맞춰서 입력해 주세요.\nxxx-xxxx-xxxx");
			return;
			} 
	}
</script>
<body>
	<form name="frm">
		<p> 이름 :  <input type="text" name="name">
		<p> 나이 : <input type="text" name ="age">
		<p> 전화번호 : <input type="text" name="phone">
		<input type="submit" value="전송" onclick="checkForm()">
	</form>
</body>
</html>