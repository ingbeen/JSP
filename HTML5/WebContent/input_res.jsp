<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	String sel[] = request.getParameterValues("sel");
	
	String sel_val = "";
	int i;
	for (i=0; i<sel.length; i++){
		sel_val += sel[i] + " ";
	}
	%>
	내용 : <%=sel_val %>
</body>
</html>