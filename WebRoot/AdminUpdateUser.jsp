<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
  <style>

  body{
   background-size:cover;
   font-size:16px;
   text-align:center;
  }
  
  </style>
<body background="img/background.jpg">
<%
request.setCharacterEncoding("utf-8");
String username = request.getParameter("username");
String userpassword = request.getParameter("password");
String userpassword1 = request.getParameter("password");
String tishi = request.getParameter("tishi");
String truename = request.getParameter("truename");
String gender = request.getParameter("gender");
String selectyear = request.getParameter("selectyear");
String selectmonth = request.getParameter("selectmonth");
String selectid = request.getParameter("selectid");
String userID = request.getParameter("userID");
%>
<form action="AdminUpdatePerson.jsp" method="post">
<h2 align="center">修改成员信息</h2>
<table border="1" style="font-size：20px;">
			<tr>
				<td>用户名：（大于等于三位）</td>
				<td><%out.print(username); %></td>
			</tr>
			<tr>
				<td>密&nbsp;码）：（大于等于六位）</td>
				<td><input type="password" name="userpassword"value=<%=userpassword %>></td>
			</tr>
			<tr>
				<td>确认密码：</td>
				<td><input type="password" name="userpassword1"value=<%=userpassword %>></td>
			</tr>
			<tr>
				<td>密码提示问题：</td>
				<td><input type="text" name="tishi"value=<%=tishi %>></td>
			</tr>
			<tr>
				<td>真实姓名：</td>
				<td><input type="text" name="truename"value=<%=truename %>></td>
			</tr>
			<tr>
				<td>性&nbsp;别：</td>
				<td><input type="radio" name="gender" value="男" checked>男
					<input type="radio" name="gender" value="女">女
				</td>
			</tr>
			<tr>
				<td>出生日期：</td>
				<td>
					<select name="selectyear" size="1" value=<%=selectyear %>>
						<option selected>1997</option>
						<option>1998</option>
						<option>1999</option>
						<option>2000</option>
					</select>
					年<select name="selectmonth" size="1" value=<%=selectmonth %>>
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
				<td><input type="text" name="userID" value=<%=userID %>></td>
			</tr>
			<tr>
				<td colspan = "2" align="center"><input type="submit" name="submit" value="提交">
				<input type="reset" name="reset" value="取消">
				</td>
			</tr>
		</table>
  		</form>	
  		<%
String id1=request.getParameter("oid");//Integer.parseInt(
session.setAttribute("uid",id1);
String username1=request.getParameter("username");//Integer.parseInt(
session.setAttribute("username",username1);
// out.print(id1);
// out.print(name);
 %>
</body>
</html>