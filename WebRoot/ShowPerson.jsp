<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
      <%@page import="com.cnstrong.domain.JDBCUtils" %>
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
<h2>用户信息显示</h2>
<table  width=80% border="1">
	<tr>
	<td><a href="index.jsp" onclick="return window.confirm('确定返回主页？')" >返回主页 </a> </td>
	</tr>
	<tr width=10%>
		<td width=6%>编号</td>
		<td width=8%>用户名</td>
		<td width=10%>密码</td>
		<td width=8%>提示</td>
		<td width=8%>真实姓名</td>
		<td width=8%>性别</td>
		<td width=8%>出生年</td>
		<td width=8%>出生月</td>
		<td width=8%>证件类型</td>
		<td width=20%>证件号</td>
		<td width=12%>操作</td>
	</tr>
</table>

<%
Statement stmt = null;
ResultSet rs = null;
Connection conn = null;
PreparedStatement preStmt=null;
	try{
		conn= JDBCUtils.getConnection();
		stmt = conn.createStatement();
		String sql = "select *from owner";
		rs= stmt.executeQuery(sql);
		//System.out.println("id  |  name |  sex  | phone | buildnum | unit | roomnum ");
		while(rs.next()){
			int uid= rs.getInt("oid");
			String name= rs.getString("username");
			String password= rs.getString("userpassword");
			String password1= rs.getString("userpassword");
			String tishi= rs.getString("tishi");
			String truename= rs.getString("truename");
			String gender= rs.getString("gender");
			String selectyear= rs.getString("selectyear");
			String selectmonth= rs.getString("selectmonth");
			String selectid= rs.getString("selectid");
			String userID= rs.getString("userID");
			%><table  width=80% border="1"><tr>
			<td width=6%><%out.print(uid); %></td> 
			<td width=8%><%out.print(name); %></td> 
 			<td width=10%><%out.print(password); %></td> 
			<td width=8%><%out.print(tishi); %></td> 
 			<td width=8%><%out.print(truename); %></td> 
 			<td width=8%><%out.print(gender); %></td> 
			<td width=8%><%out.print(selectyear); %></td>
			<td width=8%><%out.print(selectmonth); %></td> 
			<td width=8%><%out.print(selectid); %></td>
			<td width=20%><%out.print(userID); %></td>
			<td width=12%><a href="userdel.jsp?id=<%=uid%>" onclick="return window.confirm('确定删除？')" >删除 </a> 
			<a href="AdminUpdateUser.jsp?
			oid=<%=uid%>
			&username=<%=name%>
			&password=<%=password%>
			&tishi=<%=tishi%>
			&truename=<%=truename%>
			&gender=<%=gender%>
			&selectyear=<%=selectyear%>
			&selectmonth=<%=selectmonth%>
			&selectid=<%=selectid%>
			&userID=<%=userID%>
			">修改 </a></td>
			</tr>
</table><%
		}
	}catch (ClassNotFoundException e) {
		e.printStackTrace();

	}catch(SQLException e) {
		e.printStackTrace();

	}catch(Exception e) {
		e.printStackTrace();

	}

%>
</body>
</html>