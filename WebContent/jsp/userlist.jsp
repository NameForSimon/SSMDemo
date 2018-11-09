<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<form action="<%=basePath%>user/del.action" method="post">
<table border="1">
<tr><td>选择</td><td>序号</td><td>用户名</td><td>密码</td></tr>
<c:forEach items="${userlist}"  var="user">
<tr>
<td><input type="checkbox" value="${user.uid}" name="id"></td>
<td>${user.uid}</td>
<td>${user.username}</td>
<td>${user.password}</td>
</tr>
</c:forEach>
<tr><td colspan="4"><input type="checkbox" name="All" id="All" onclick="selectAll()">全选/反选</td></tr>
</table>
<input type="submit" value="删除">
</form>
</body>
<script type="text/javascript">
document.getElementById('All').onclick=function(){
	var checkElements=document.getElementsByName('id');
	if(this.checked){
		for(var i=0;i<checkElements.length;i++){
			var checkElement=checkElements[i];
			checkElement.checked="checked";
		}
	}else{
		  for(var i=0;i<checkElements.length;i++){  
              var checkElement=checkElements[i];  
              checkElement.checked=null;  
          }
	}
}
</script>
</html>