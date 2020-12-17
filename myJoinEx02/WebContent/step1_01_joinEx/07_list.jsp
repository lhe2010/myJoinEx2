<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원조회</title>
</head>
<body>
	<h2>전체 회원 리스트를 조회중...</h2>
	<table border = 1>
		<tr>
			<th>ID</th>
			<th>PASSWD</th>
			<th>NICKNAME</th>
			<th>JOINDATE</th>
		</tr>
		
		<%
		//조회
		String jdbcUrl = "jdbc:mysql://localhost:3306/my_join_ex2?serverTimezone=UTC";
		String dbId = "root";
		String dbPw = "1234";
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
		String sql = "select * from member";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		while (rs.next()) {
			String rId = rs.getString("id");
			String rPw = rs.getString("passwd");
			String rName = rs.getString("name");
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			String rDate = sdf.format(rs.getDate("joindate"));
	%>
			<tr>
				<td><%=rId %></td>
				<td><%=rPw %></td>
				<td><%=rName %></td>
				<td><%=rDate %></td>
			</tr>
	<%
		}
	%>
	</table>
</body>
</html>