<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>

<!-- 인스턴트 객체느낌 InputBean input = new InputBean(); 이런 느낌 -->
<jsp:useBean id="input" class="test.InputBean" />

<!-- jsp:useBean "id"!(기준)!와 jsp:setProperty "input" 같아야 서로 연결된다 -->
<!-- 위에서 만든 객체의 모든(*) 필드를 불러온다 -->
<jsp:setProperty name="input" property="*" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<table border="1" align="center">
		<!-- 아이디 -->
		<tr> 
			<th width="130px">아이디</th>
			<td width="350px"><%=input.getId() %></td>
			<!-- 이런식도 가능
			<jsp:getProperty name="input" property="id"></jsp:getProperty>
			-->
		</tr>
		
		<!-- 비밀번호 -->
		<tr>
			<th>비밀번호</th>
			<td><%=input.getPassword1() %></td>
		</tr>
		
		<!-- 주민번호 -->
		<tr>
			<th>주민번호</th>
			<td>
				<%=input.getJumin1() %> - 
				<%=input.getJumin2() %>
			</td>
		</tr>
		
		<!-- 성별 -->
		<tr>
			<th>성별</th>
			<td><%=input.getSex() %></td>
		</tr>
		
		<!-- 전화번호 -->
		<tr>
			<th>전화번호</th>
			<td>
				<%=input.getTel1() %> - 
				<%=input.getTel2() %> - 
				<%=input.getTel3() %>	
			</td>
		</tr>
		
		<!-- 이메일 -->
		<tr>
			<th>이메일</th>
			<td>
				<%=input.getEmailFront() %> @ 
				<%=input.getEmailBack() %>
			</td>
		</tr>
		
		<!-- 취미 -->
		<tr>
			<th>취미</th>
			<td><%=input.hobbyResult() %></td>
		</tr>
		
		<!-- 자기소개 -->
		<tr>
			<th>자기소개서</th>
			<td>
				<%=input.getIntro() %>
			</td>
		</tr>
	</table>
</body>
</html>