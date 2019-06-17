<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.cnstrong.Dao.AddpersonDao" %>
    <%@page import="com.cnstrong.Dao.CheckRegisterpersonDao" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String username = request.getParameter("username");
	String userpassword = request.getParameter("userpassword");
	String userpassword1 = request.getParameter("userpassword1");
	String tishi = request.getParameter("tishi");
	String truename = request.getParameter("truename");
	String gender = request.getParameter("gender");
	String selectyear = request.getParameter("selectyear");
	String selectmonth = request.getParameter("selectmonth");
	String selectid = request.getParameter("selectid");
	String userID = request.getParameter("userID");
	CheckRegisterpersonDao register = new CheckRegisterpersonDao();
	int reg = register.checkRegister(username);
	int flag=0;
	if(username.equals("admin")){
		flag=1;
	}
		if(userpassword.equals(userpassword1)){
			if(username.length()>=3&&userpassword.length()>=6){
					if(flag==0&&reg==1){
		 	AddpersonDao add1 = new AddpersonDao();
			int result = add1.add(username, userpassword, tishi,truename,gender, selectyear, selectmonth,selectid,userID);
				 if(result==1){
					 out.print("添加成功！<br />用户名："+username
								
								+"<br />密码提示:"+tishi
								+"<br />真实姓名:"+truename
								+"<br />性别:"+gender
								+"<br />出生年月:"+selectyear+"年"+selectmonth+"月"
								+"<br />证件类型:"+selectid
								+"<br />证件号码:"+userID);
								
					response.setHeader("refresh", "2;URL=index.jsp");
				 	
					}else if(result==-3){
						out.print("添加失败！信息不完整！");
					}
				 else{
				
					out.print("添加失败！");
					//response.setHeader("refresh", "2;URL=index.jsp");
					}
				 
				}
					else{
						 out.print("账户名已存在！请重新输入！");
							response.setHeader("refresh", "2;URL=userregister.jsp");
					 }
			}else{
				out.print("账户密码长度不正确，请重新输入");
				response.setHeader("refresh", "2;URL=userregister.jsp");
			}
	 }
			
	else{
	out.print("两次密码不相同，请重新输入");
	response.setHeader("refresh", "2;URL=userregister.jsp");
}
	 %>
</body>
</html>