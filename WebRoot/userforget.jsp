<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<form name = "userforget" method=post action="userforgetcheck.jsp">
<% String tishi=(String) session.getAttribute("tishi"); %>
<table width=90% border=0 align=center>
		<tr>
			<td height=100px colspan=2>
				<p style="font-family：宋体;font-size：40px;color：red;text-align：center;">
				<strong>
					<b>忘记密码！</b>
				</strong>
				</p>
			</td>
		</tr>
		
		<tr>
			<td>
				<table align=center>
					<tr>
						<td align=center>
							登录名：<input type="text" name="username" value=""><br/>	
							<br/>	 
							<input type="submit" value="查询"/><br/><br/>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		
	</table>
	</form>
</body>
</html>