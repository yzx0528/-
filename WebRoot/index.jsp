<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.cnstrong.javabean.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>天猫主页</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  <script type="text/javascript">
  function f(){
	  alert("请您登陆！！！");
  }
  </script>
  <style>
  li{
  float:left; list-style: none;
  font-size: 20px;
  margin: 5px;
  }
  body{
   background-size:cover;
   text-align:center;
  }
table
{
	border:1px solid black;
	
}
  </style>
  <body background="img/background.jpg">
  	<center>
  		<!-- 用表格来设计主界面 -->
  		<table width=100% border=1 >
  			<tr>
  			<td height=50px colspan=6>
  			<table width=100% border=0  bgcolor="bcb5d7">
  				<tr>
  					<td><%@ include file="top.jsp" %></td>
  				</tr>
  			</table>
  			</td>
  			</tr>
  			<tr bgcolor="9eaad4"><td><img src="img/book.jpg"></td><td><img src="img/book2.jpg"></td></tr>
  			<tr>
  				<td colspan=6><%@include file="bottom.html" %></td>
  			</tr>
  		</table>
  	</center>

    
  </body>
</html>
