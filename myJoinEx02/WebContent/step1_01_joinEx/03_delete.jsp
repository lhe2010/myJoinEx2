<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴</title>
</head>
<body>

	<h2>탈퇴하시려는 회원님의 정보를 확인해주세요.</h2>
	<form method="post" action="04_deletePro.jsp">
		<p>아이디 : <input type="text" name="id" id="id"><br>
		<p>비밀번호 : <input type="password" name="passwd" id="passwd"><br>
		<p><input type="submit" value="탈퇴">
		<input type="reset" value="재작성">	
	</form>

</body>
</html>