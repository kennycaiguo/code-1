<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'register.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  	<jsp:include page="head.jsp"/>
	<form action="${pageContext.request.contextPath}/BbsServlet?method=register" method="post">
		<table border="1" align="center" style="position:absolute;left:40%;top:10%">
			<caption><h2>用户注册</h2></caption>
			<tr>
				<th>用户名</th>
				<td>
					<input type="text" name="username" />
				</td>
			</tr>
			<tr>
				<th>密码</th>
				<td><input type="password" name="password"/></td>
			</tr>
			<tr>
				<th>性别</th>
				<td>
					<input type="radio" name="gender" value="男" checked/>男
					<input type="radio" name="gender" value="女"/>女
				</td>
			</tr>
			<tr>
				<th>邮箱</th>
				<td><input type="text" name="email"/></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="提交" /></td>
			</tr>
		</table>
	</form> 
	<jsp:include page="foot.jsp"></jsp:include>	   
  </body>
</html>
