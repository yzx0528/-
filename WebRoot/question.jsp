<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="#FFFFF0">
	用户购物调查<br/>
	<form action="" method = "post">
		您获得商品信息的来源：
		<input type="checkbox" name="favor" value="网络">网络
		<input type="checkbox" name="favor" value="电视">电视
		<input type="checkbox" name="favor" value="广播">广播
		<input type="checkbox" name="favor" value="广告手册">广告手册
		<br>
		<input type="submit" name="qwe" value="返回">
	</form>
	<%
		request.setCharacterEncoding("utf-8");
		if(request.getParameter("qwe")!=null){
			for(int i=0;i<request.getParameterValues("favor").length;i++){
				out.println("购物喜好"+i+":"+request.getParameterValues("favor")[i]+"<br>");
			}
		//	out.println(request.getParameter("qwe"));
		}
	 %>
</body>
</html>