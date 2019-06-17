<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>  body{
   background-size:cover;
   font-size:30px;
   text-align:center;
  }
 
  </style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>网上商城用户登录</title>
</head>
<body background="img/background.jpg">
<center>
	<!-- 用表格来设计主页 -->
	<form name = "userlogin" method=post action="userlogincheck.jsp">
	<table width=90% border=0 align=center>
		<tr>
			<td height=100px colspan=2>
				<p style="font-family：宋体;font-size：40px;color：red;text-align：center;">
				<strong>
					<b>网上商城用户登录</b>
				</strong>
				</p>
			</td>
		</tr>
		
		<tr>
			<td>
				<table align=center>
					<tr>
						<td align=center>
							登录名：<input type="text" name="username" value=""><a href="userforget.jsp" style="font-size: 20px">忘记密码</a><br/>	
							<br/>	 
							登录密码：<input type="password" name="userpassword" value=""><br/>
							 <br/><br/>
							<input type="submit" value="登录"/><br/><br/>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		
	</table>
	</form>
</center>
</body>
</html>