<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Validation</title>
</head>
<script type="text/javascript">
	function checkForm(){
		if(!isNaN(document.frm.name.value.substr(0,1))){
			alert ("이름은 숫자로 시작할 수 없습니다.");
			document.frm.name.select();
			}
		}
</script>
<body>
	<form name="frm">
			<p> 이름 : <input type="text" name="name">
			<input type="submit" value="전송" onclick="checkForm()">
	</form>	
</body>
</html>