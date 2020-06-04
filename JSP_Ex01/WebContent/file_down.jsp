<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%@ page import="java.io.*" %>
<%
String fileName=request.getParameter("file_name");

String savePath="upload";
ServletContext context = getServletContext();
String sDownloadPath = context.getRealPath(savePath);
String sFilePath = sDownloadPath + "\\" + fileName;

byte b[] = new byte[4096];
File ofile = new File(sFilePath);
FileInputStream in = new FileInputStream(sFilePath);

String sMimeType = getServletContext().getMimeType(sFilePath);
System.out.println("sMimeType>>>" + sMimeType);

// octet-stream은 8비트로 된 일련의 데이터를 뜻합니다. 지정되지 않은 파일 형식을 의미
if(sMimeType == null) {
	sMimeType = "application/octet=stream";
}
response.setContentType(sMimeType);

// 한글 업로드(이 부분이 한글 파일명이 깨지는 것을 방지해 줍니다)
String sEncoding = new String(fileName.getBytes("utf-8"), "8859_1");

// 이부분이 모든 파일 링크를 클릭했을 때 다운로드 화면이 출력되게 처리하는 부분
response.setHeader("Content-Disposition", "attachment; filename = " + sEncoding);

// 서버에 발생하는 예외문제 해결 : response.getOutputStream()로 인해 발생
// jsp에서 servlet으로 변환될때 내부적으로 out객체가 생성되기 때문에 기존 out객체 초기화함
out.clear();
out = pageContext.pushBody();

ServletOutputStream out2 = response.getOutputStream();
int numRead;

// 바이트 배열 b의 0번부터 numRead번까지 브라우저로 출력
while((numRead = in.read(b, 0, b.length)) != 1) {
	out2.write(b, 0,numRead);
}
out2.flush();
out2.close();
in.close();
%>
