<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<body>
<form action="<%=basePath%>user/updateuser.action" method="post">
用户名<input type="text" value="<%=request.getParameter("username")%>" name="username"><br>
密码<input type="password" name="password"><br>
<input type="submit" value="修改">
</form>
</body>
</html>