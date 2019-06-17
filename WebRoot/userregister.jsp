<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>  body{
   background-size:cover;
   font-size:30px;
   text-align:center;
  }</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body  background="img/background.jpg">
<center>
	<h2>用户注册</h2>
	<form name="" action="showuserInfo.jsp" method="post">
		<table border="1" style="font-size：20px;">
			<tr>
				<td>用户名：<br />（大于等于三位且一经注册无法修改！）</td>
				<td><input type="text" name="username"></td>
			</tr>
			<tr>
				<td>密&nbsp;码：<br />（大于等于六位）</td>
				<td><input type="password" name="userpassword"></td>
			</tr>
			<tr>
				<td>确认密码：</td>
				<td><input type="password" name="userpassword1"></td>
			</tr>
			<tr>
				<td>密码提示问题：</td>
				<td><input type="text" name="tishi"></td>
			</tr>
			<tr>
				<td>真实姓名：</td>
				<td><input type="text" name="truename"></td>
			</tr>
			<tr>
				<td>性&nbsp;别：</td>
				<td><input type="radio" name="gender" value="男">男
					<input type="radio" name="gender" value="女">女
				</td>
			</tr>
			<tr>
				<td>出生日期：</td>
				<td>
					<select name="selectyear" size="1">
						<option selected>1997</option>
						<option>1998</option>
						<option>1999</option>
						<option>2000</option>
					</select>
					年<select name="selectmonth" size="1">
						<option selected>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						<option>5</option>
						<option>6</option>
						<option>7</option>
						<option>8</option>
						<option>9</option>
						<option>10</option>
						<option>11</option>
						<option>12</option>
					</select>
					月
				</td>
			</tr>
			<tr>
				<td>证件类型：</td>
				<td><select name="selectid">
					<option value="学生证">学生证
					<option value="身份证">身份证
					<option value="军官证">军官证
				</select>
				</td>
			</tr>
			<tr>
				<td>证件号码：</td>
				<td><input type="text" name="userID"></td>
			</tr>
			<tr>
				<td colspan = "2" align="center"><input type="submit" name="submit" value="提交">
				<input type="reset" name="reset" value="取消">
				</td>
			</tr>
		</table>
	</form>
</center>
</body>
</html>