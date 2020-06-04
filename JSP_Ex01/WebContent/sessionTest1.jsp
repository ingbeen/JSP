<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%
session.setMaxInactiveInterval(3);
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<h2>세션 테스트</h2>
	isNew() : <%=session.isNew()%><br>
	생성시간 : <%=session.getCreationTime() %><br>
	최종시간 : <%=session.getLastAccessedTime() %><br>
	세션ID : <%=session.getId() %><br>
	<%
	session.setAttribute("id", "java");
	application.setAttribute("app_id", "application");
	%>
	최종시간 : <%=session.getAttribute("id") %><br>
	세션ID : <%=application.getAttribute("app_id") %><br>
</body>
</html>