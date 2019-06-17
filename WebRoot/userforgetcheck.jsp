<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.cnstrong.Dao.*" %>
<!DOCTYPE html>
<html>
<style>  body{
   background-size:cover;
   font-size:30px;
   text-align:center;
  }</style>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body  background="img/background.jpg">
<%
request.setCharacterEncoding("utf-8");
response.setContentType("text/html;charset=utf-8");
String username = request.getParameter("username");
UserForgetDao user1 = new UserForgetDao();
String tishi = user1.check1(username);
if(tishi!=null){
	out.print("查询成功！<br />密码提示："+tishi);
	response.setHeader("refresh", "3;URL=userlogin.jsp");
}else{
out.print("查询失败！");
response.setHeader("refresh", "3;URL=userforget.jsp");
}
%>
</body>
</html>