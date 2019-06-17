<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.cnstrong.Dao.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
int id1 =Integer.parseInt(request.getParameter("id"));
delpersonDao del1 =new delpersonDao(); 
	del1.del(id1);
	out.print("已删除！");
	response.setHeader("refresh", "2;URL=ShowPerson.jsp");
%>
</body>
</html>