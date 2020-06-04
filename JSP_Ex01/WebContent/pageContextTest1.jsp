<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%
request.setAttribute("id", "java");
pageContext.forward("pageContextTest2.jsp");
%>