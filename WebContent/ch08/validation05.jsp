<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function checkMember(){

		/* 정규 표현식 */
		var regExpId = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
		/* 시작문자가 영어 소문자, 영어 대문자, 한글만 가능 (숫자, 특수문자 블가능) */
		var regExpName = /^[가-힣]*$/;
		/* $는 끝 글자 지정, 시작 글자도 한글이고 끝 글자도 한글이며 0번이상 반복 */
		var regExpPasswd = /^[0-9]*$/;
		/* 숫자만 0번이상 반복  */
		var regExpPhone = /^\d{3}-\d{3,4}-\d{4}$/;
		/* \d는 숫자를 뜻함 {n}는 n회 반복을 뜻함  */
		var regExpEmail =/^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
		/* 시작문자는 숫자와 영문자 1자 이상의 문자, 이후의 글자는 특수문자-_\, 와 숫자나 영문자 0번이상 반복  */
		/* 이후에 @ 문자가 반드시 포함되며 그 이후의 문자는 특수문자 -_\, 와 숫자, 영문자가 0번 이상 반복 */
		/* 이후에 . 문자가 반드시 포함되며, 영문자가 2자 혹은 3자로 끝남 */
		var form = document.Member;

		var id = form.id.value;
		var name = form.name.value;
		var passwd = form.passwd.value;
		var phone = form.phone1.value + "-" + form.phone2.value + "-" + form.phone3.value;
		var email = form.email.value;

		if(!regExpId.test(id)){
			alert("아이디는 문자로 시작해주세요 !");
			form.id.select();
			return;
		}
		if(!regExpName.test(name)){
			alert("이름은 한글만 입력해주세요!");
			return;
		}

		if(!regExpPasswd.test(passwd)){
			alert("비밀번호는 숫자만 입력해주세요!");
			return;
		}

		if(!regExpPhone.test(phone)){
			alert("연락처 입력을 확인해주세요!");
			return;
		}

		if(!regExpEmail.test(email)){
			alert("이메일 입력을 확인해주세요!");
			return;
		}

		form.submit();
	}
</script>
<body>
	<h3>회원 가입</h3>
	
	<form action ="validation05_process.jsp" name="Member" method="post" >
		<p> 아이디 : <input type="text" name="id">
		<p> 비밀번호 : <input type="password" name="passwd">
		<p> 이름 : <input type="text" name="name">
		<p> 연락처 : <select name="phone1">
					<option value="010">010</option>
					<option value="011">011</option>
					<option value="016">016</option>
					<option value="017">017</option>
					<option value="019">019</option>
				</select>-<input type="text" maxlength="4" size="4" name="phone2"> - <input type="text" maxlength="4" size="4" name="phone3">
		<p> 이메일 : <input type="text" name="email">
		<p> <input type = "button"  value = "가입하기" onclick="checkMember()">
	</form>
	
</body>
</html>