<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/easyui/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/easyui/themes/icon.css" />
<script type="text/javascript" src="<%=basePath%>/easyui/jquery.min.js"></script>
<script type="text/javascript"
	src="<%=basePath%>/easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>/easyui/insdep-extend.min.js"></script>
<body>
<form action="<%=basePath%>user/login.action" method="post">
账号名:<input type="text" name="username"><br>
密码：<input type="text" name="password"><br>
验证码:<input type="text" name="verificationcode"><br>
<input type="submit" value="提交">
</form>
<input class="easyui-textbox">
<a href="<%=basePath%>user/list.action">成员列表</a>
<a href="<%=basePath%>user/update.action">更新列表</a>
<table class="table table-basic">
<tr>
<td>1</td>
<td>2</td>
</tr>
</table>
</body>
</html>