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
	<h1>
	현재 페이지는 responseTest1.jsp에 의해<br>
	리다이렉트 된 페이지입니다.<br>
	아이디 : <%=request.getAttribute("id") %>
	</h1>
</body>
</html>