<%@ page language="java" contentType="text/html;charset=utf-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
  <style>
  li{
  float: left; list-style: none; border: solid 2px red;
  font-size: 20px;
  margin: 10px;
  }
  </style>
<body background="img/flower.jpg" style="font-size:20px;text-align:center;">
  	<center>
  		<!-- 用表格来设计主界面 -->
  		<table width=100% border=1>
  			<tr bgcolor="white">
  			<td height=50px colspan=6>
  			<table width=100% border=0>
  				<tr>
  					<td><%@ include file="top.jsp" %></td>
  				</tr>
  			</table>
  			</td>
  			</tr>
  			<tr><td colspan = "6">
  			<form action="transSuggestion.jsp" method = "post">
  				用户名：<input type = "text" name = "username" size = 20><br/>
  				关键字：<input type = "text" name = "keyword" size = 20><br/>
  				内容：<br/>
  				<textarea rows="10" cols="30" name = "content"></textarea>
  				<br/>
  				<input type = "submit" value = "提交"/>
  				<input type = "reset" value = "重置"/>
  			</form>
  			</td></tr>
  			<tr bgcolor="white">
  				<td colspan=6><%@include file="bottom.html" %></td>
  			</tr>
  		</table>
  	</center>
    
  </body>
</html>