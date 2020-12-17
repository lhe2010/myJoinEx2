<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보수정</title>
</head>
<body>
	<h2>수정하시려는 회원님의 정보를 확인해주세요.</h2>
	<form method="post" action="06_updatePro.jsp">
		<p>아이디 : <input type="text" name="id" id="id"><br>
		<p>비밀번호 : <input type="password" name="passwd" id="passwd"><br>
		<p>바꾸실 새 닉네임 : <input type="text" name="newName" id="newName"><br>
		<p><input type="submit" value="수정">
		<input type="reset" value="재작성">	
	</form>
</body>
</html>