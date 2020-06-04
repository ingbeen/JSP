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
	ResultSetMetaData rsmd = rs.getMetaData();
	
	out.println("칼럼 수 : " + rsmd.getColumnCount() + "<br>");
	
	for(int i = 1; i <= rsmd.getColumnCount(); i++) {
		out.println(i + "번째 컬럼의 이름 : " + rsmd.getColumnName(i) + "<br>");
		out.println(i + "번째 컬럼의 타입 이름 : " + rsmd.getColumnTypeName(i) + "<br>");
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