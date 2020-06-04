<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
<%request.setCharacterEncoding("utf-8"); %>
<%
Connection conn = null;
String sql = "select * from emp";
PreparedStatement pstmt = null;
ResultSet rs = null;
try {
	Context init = new InitialContext();
	DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
	conn = ds.getConnection();
	
	pstmt = conn.prepareStatement(sql);
	rs = pstmt.executeQuery();
	
	while(rs.next()){
		out.println("<h3>" + rs.getInt("empno") + rs.getString("ename") + "</h3>");
	}
} catch(Exception e) {
	out.println("<h3>데이터 가져오기를 실패하였습니다</h3>");
	e.printStackTrace();
} finally {
	try {
		rs.close();
	} catch (Exception e) {
	}
	try {
		pstmt.close();
	} catch (Exception e) {
	}
	try {
		conn.close();
	} catch (Exception e) {
	}
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>