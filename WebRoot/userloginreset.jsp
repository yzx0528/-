<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="java.sql.*" %>
      <%@page import="com.cnstrong.domain.JDBCUtils" %>
<!DOCTYPE html>
<html>
<style>  body{
   background-size:cover;
   font-size:30px;
   text-align:center;
  }</style>
<head>
<meta charset="UTF-8">
<title>我的账户</title>
</head>
<body background="img/background.jpg">
<%String username = (String)session.getAttribute("username"); 
if(username==null){
	out.print("请您登录！");
	response.setHeader("refresh", "2;URL=userlogin.jsp");
}else{
Statement stmt = null;
ResultSet rs = null;
Connection conn = null;
PreparedStatement preStmt=null;
	try{
		conn= JDBCUtils.getConnection();
		stmt = conn.createStatement();
		String sql = "select *from owner where username='"+username+"'";
		rs= stmt.executeQuery(sql);
		//System.out.println("id  |  name |  sex  | phone | buildnum | unit | roomnum ");
		while(rs.next()){
			int oid= rs.getInt("oid");
			String username1= rs.getString("username");
			String userpassword= rs.getString("userpassword");
			String tishi= rs.getString("tishi");
			String truename= rs.getString("truename");
			String gender= rs.getString("gender");
			String selectyear= rs.getString("selectyear");
			String selectmonth= rs.getString("selectmonth");
			String selectid= rs.getString("selectid");
			String userID= rs.getString("userID");
			%><h2>账户信息</h2>
			<table  width=40% border="1" align=center>
			<tr><td width=10%>会员卡号:</td><td width=10%><%out.print(oid); %></td></tr>
			<tr><td width=10%>用户名:</td> <td width=10%><%out.print(username1); %></td> </tr>
			<tr><td width=10%>密码:</td><td width=10%><%out.print(userpassword); %></td> </tr><tr>
			<td width=10%>密码提示:</td><td width=10%><%out.print(tishi); %></td> </tr><tr>
			<td width=10%>真实姓名:</td><td width=10%><%out.print(truename); %></td></tr><tr>
 			<td width=10%>性别:</td><td width=10%><%out.print(gender); %></td> </tr><tr>
 			<td width=10%>出生年:</td><td width=10%><%out.print(selectyear); %></td> </tr><tr>
			<td width=10%>出生月:</td><td width=10%><%out.print(selectmonth); %></td></tr><tr>
			<td width=10%>证件类型:</td><td width=10%><%out.print(selectid); %></td> </tr><tr>
			<td width=10%>证件号码:</td><td width=10%><%out.print(userID); %></td></tr><tr>
			<td width=10%>操作:</td><td width=10%>
<%-- 			<a href="del.jsp?id=<%=uid%>" onclick="return window.confirm('确定删除？')" >删除 </a>  --%>
			<a href="userupdate.jsp?oid=<%=oid%>&username=<%=username%>&userpassword=<%=userpassword%>&tishi=<%=tishi%>&truename=<%=truename%>&gender=<%=gender%>&selectyear=<%=selectyear%>&selectmonth=<%=selectmonth%>&selectid=<%=selectid%>&userID=<%=userID%>">修改 </a></td>
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
}
%>
</body>
</html>