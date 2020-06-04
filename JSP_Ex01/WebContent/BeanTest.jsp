<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>

<!-- 자바빈 객체 생성 -->
<!-- 객체이름 id="beantest" -->
<!-- 경로 class="test.BeanTest" 디폴트 패키지는 안됨 -->
<!-- 범위 scope="page" -->
<jsp:useBean id="beantest" class="test.BeanTest" scope="page"></jsp:useBean>

<!-- 속성값 설정 -->
<jsp:setProperty name="beantest" property="*"></jsp:setProperty>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<b>자바빈 사용 예제</b>
	<!-- 설정된 속성값 추출 -->
	<h3><jsp:getProperty name="beantest" property="name"></jsp:getProperty></h3>
	<h3><jsp:getProperty name="beantest" property="tel"></jsp:getProperty></h3>
</body>
</html>