<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
<%
String id = request.getParameter("id");
String pass = request.getParameter("pass");
String name = request.getParameter("name");
int age = Integer.parseInt(request.getParameter("age"));
String gender = request.getParameter("gender");
String email = request.getParameter("email");

Connection conn = null;
PreparedStatement pstmt = null;

try {
	Context init = new InitialContext();
	DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
	conn = ds.getConnection();
	
	pstmt = conn.prepareStatement("INSERT INTO member VALUES(?, ?, ?, ?, ?, ?)");
	pstmt.setString(1, id);
	pstmt.setString(2, pass);
	pstmt.setString(3, name);
	pstmt.setInt(4, age);
	pstmt.setString(5, gender);
	pstmt.setString(6, email);
	int result = pstmt.executeUpdate();
	
	if (result != 0) {
		out.println("<script>location.href='loginForm.jsp'</script>");
	} else {
		out.println("<script>location.href='joinForm.jsp'</script>");
	}
} catch(Exception e) {
	e.printStackTrace();
} finally {
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
