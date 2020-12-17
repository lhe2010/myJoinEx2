<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>

	<form method="post" action="02_insertPro.jsp">
		<p>아이디 : <input type="text" id="id" name="id"><br>
		<p>비밀번호 : <input type="password" id="passwd" name="passwd"><br>
		<p>닉네임 : <input type="text" id="name" name="name"><br>
		<p><input type="submit" value="회원가입버튼">	
		<input type="reset" value="다시쓰기">
	</form>
	
</body>
</html>