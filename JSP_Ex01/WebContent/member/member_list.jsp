<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
<%
String id = null;

if((session.getAttribute("id")==null) || 
	(!((String)session.getAttribute("id")).equals("admin"))) {
	out.println("<script>location.href='loginForm.jsp'</script>");
}

Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

try {
	Context init = new InitialContext();
	DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
	conn = ds.getConnection();
	
	pstmt = conn.prepareStatement("SELECT * FROM member");
	rs = pstmt.executeQuery();
} catch(Exception e) {
	e.printStackTrace();
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원관리 시스템 관리자모드(회원 목록 보기)</title>
</head>
<body>
	<table border="1" align="center" width="300">
		<tr align="center"><td colspan="2">회원 목록</td></tr>
		<%while(rs.next()) { %>
		<tr align="center">
			<td>
				<a href="member_info.jsp?id=<%=rs.getString("id") %>">
					<%=rs.getString("id") %>
				</a>
			</td>
			<td>
				<a href="member_delete.jsp?id=<%=rs.getString("id") %>">
					삭제
				</a>
			</td>
		</tr>
		<%} %>
	</table>
</body>
</html>