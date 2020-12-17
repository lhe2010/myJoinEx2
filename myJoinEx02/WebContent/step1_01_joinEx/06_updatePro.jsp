<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정진행</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		String newName = request.getParameter("newName");
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String jdbcUrl = "jdbc:mysql://localhost:3306/my_join_ex2?serverTimezone=UTC";
			String dbId = "root";
			String dbPw = "1234";
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);
			
			String sql = "select * from member where id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				String rPw = rs.getString("passwd");
				if (rPw.equals(passwd)) {
					sql = "update member set name = ? where id = ?";
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, newName);
					pstmt.setString(2, id);
					pstmt.executeUpdate();
	%>
					<script>
						alert("수정완료!");
						location.href = "00_main.jsp";
					</script>
	<%
				} else {
	%>
					<script>
						alert("비밀번호를 확인하세요");
						history.go(-1);
					</script>
	<%
				}
			} else {
	%>
				<script>
					alert("아이디를 확인하세요");
					history.go(-1);
				</script>
	<%
			}
			
		} catch (Exception e) {
			
		} finally {
			pstmt.close();
			conn.close();
		}
	%>
</body>
</html>