<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ page import="com.cnstrong.Dao.UpdatepersonDao"  %>
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
	response.setContentType("text/html;charset=utf-8");
	String uid1 = (String)session.getAttribute("uid");
	int id1 =Integer.parseInt(uid1);
	String username = (String)session.getAttribute("username");
	String userpassword = request.getParameter("userpassword");
	String userpassword1 = request.getParameter("userpassword1");
	String tishi = request.getParameter("tishi");
	String truename = request.getParameter("truename");
	String gender = request.getParameter("gender");
	String selectyear = request.getParameter("selectyear");
	String selectmonth = request.getParameter("selectmonth");
	String selectid = request.getParameter("selectid");
	String userID = request.getParameter("userID");
		if(userpassword.equals(userpassword1)){
			if(userpassword.length()>=6){
					
						UpdatepersonDao update1 =new UpdatepersonDao();
						boolean result =update1.update(id1, username, userpassword, tishi, truename, gender, selectyear, selectmonth, selectid, userID);
						if(result){
							out.print("修改成功！<br />用户名："+username
									+"<br />密码:"+userpassword
									+"<br />密码提示:"+tishi
									+"<br />真实姓名:"+truename
									+"<br />性别:"+gender
									+"<br />出生年:"+selectyear
									+"<br />出生月:"+selectmonth
									+"<br />证件类型:"+selectid
									+"<br />证件号:"+userID);
							response.setHeader("refresh", "3;URL=ShowPerson.jsp");
						}else{
							out.print("修改失败！");
							response.setHeader("refresh", "2;URL=ShowPerson.jsp");
						}
				
			}else{
				out.print("密码长度不正确，请重新输入");
				response.setHeader("refresh", "2;URL=ShowPerson.jsp");
			}
	 }
			
	else{
	out.print("两次密码不相同，请重新输入");
	response.setHeader("refresh", "2;URL=ShowPerson.jsp");
}
	
%>
</body>
</html>