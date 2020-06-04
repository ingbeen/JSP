<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
<%request.setCharacterEncoding("utf-8"); %>
<%
Connection conn = null;
try {
	Context init = new InitialContext();
	// java:comp/env : 톰캣에서 리소를 관리하는 가상의 디렉토리
	DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
	// 이미 커넥션풀에서 만들어진 것을 할당 받는것
	conn = ds.getConnection();
	
	out.println("<h3>연결되었습니다.</H3>");
} catch (Exception e) {
	out.println("<h3>연결에 실패하였습니다.</h3>");
	e.printStackTrace();
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