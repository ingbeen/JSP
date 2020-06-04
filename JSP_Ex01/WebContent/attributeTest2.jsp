<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<h2>영역과 속성 테스트</h2>
	<%
	String email=request.getParameter("email");
	String address=request.getParameter("address");
	String tel=request.getParameter("tel");
	session.setAttribute("email", email);
	session.setAttribute("address", address);
	session.setAttribute("tel", tel);
	
	String name=(String)application.getAttribute("name");
	%>
	<h3>
	<%=name %>님 정보가 모두 저장되었습니다.</h3>
	<a href="attributeTest3.jsp">확인하러 가기</a>
	<form action="attributeTest2.jsp" method="post">
		<table border="1">
			<tr><td colspan="2">Session 영역에 저장할 내용들</td></tr>
			<tr>
				<td>e-mail 주소</td>
				<td><input type="text" name="email"></td>
			</tr>
			<tr>
				<td>집 주소</td>
				<td><input type="text" name="address"></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" name="tel"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="전송"></td>
			</tr>
		</table>
	</form>
</body>
</html>