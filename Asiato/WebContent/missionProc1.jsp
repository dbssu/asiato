<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String pwd = request.getParameter("pwd");
	
	
	if (pwd.equals("1234")) {%>
	<script>
		alert('인증완료');
	</script>
<%	}
	out.print("<script>history.back();</script>");
%>
</body>
</html>