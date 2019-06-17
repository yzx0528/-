<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="javax.swing.JOptionPane" %>
<%@ page import="com.cnstrong.Dao.CheckpersonDao" %>
<%@page import="java.sql.*" %>
      <%@page import="com.cnstrong.domain.JDBCUtils" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	response.setContentType("text/html;charset=utf-8");
	String username=request.getParameter("username");
	
	String userpassword = request.getParameter("userpassword");
	//Integer.parseInt(

	Boolean usercheck = true;
	//JOptionPane.showMessageDialog(null,"username"+username+","+userpassword);
	int nIndex=0;

	
	if(username==null&&username.length()<3){
		usercheck=false;
	}
	if(userpassword==null&&userpassword.length()<6){
		usercheck=false;
	}
	if(username.equals("admin")&&userpassword.equals("123456")){
		request.getRequestDispatcher("ShowPerson.jsp").forward(request,response);
	}else if(usercheck){
		CheckpersonDao check1 = new CheckpersonDao();
		int userCheck1 = check1.check(username,userpassword);
		//登录成功时，session中才会有username
		if(userCheck1!=1){
	%>
		<jsp:forward page="loginerror.jsp"></jsp:forward>
	 <%
	 	}else{
	 		session.setAttribute("username", username);
	 		request.getRequestDispatcher("index.jsp").forward(request, response);
	 
	  	}
	}
	 
// out.print(id1);
// out.print(name);
 %>
	
</body>
</html>