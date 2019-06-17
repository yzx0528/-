<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import = "com.cnstrong.javabean.*,com.cnstrong.javabean1.*,com.cnstrong.Dao.*" %>
   <%@page import="java.util.*"%>
   <%@ page import = "java.text.SimpleDateFormat" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
  <style>
  li{
  float:left; list-style: none;
  font-size: 20px;
  margin: 5px;
  }
  body{
   background-size:cover;
   font-size:15px;
   
  }
  
  </style>
<jsp:useBean id= "mycart" class = "com.cnstrong.javabean.shopcar" scope="session"></jsp:useBean>
<body  background="img/background.jpg">
<%
double maxmoney=Double.parseDouble(request.getParameter("maxmoney"));
String action=request.getParameter("action");
String username = (String)session.getAttribute("username");
if("add".equals(action)&&username!=null){
	List buylist=mycart.getBuylist();
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	String datetime=sdf.format(new Date());
	Order order=new Order();
	//user user=(user)session.getAttribute("username");
	//String username=user.getUsername();

	%>订单提交成功!&nbsp;&nbsp;用户名：<%=username %><br />
	----------------------------------------<br /><% 
	for(int i=0;i<buylist.size();i++){
		goodsBean goods=(goodsBean)buylist.get(i);
		order.setGoodsid(goods.getProdno());
		order.setBuynum(goods.getNum());
		order.setOrdertotal(goods.getPrice()*goods.getNum());
		order.setUsername(username);
		order.setDatetime(datetime);
		OrderInfor orderinfor=new OrderInfor();
		boolean b=orderinfor.add(order);
		//if(b){
			//mycart.clearcart();
			%>
			商品编号：<%=order.getGoodsid()%>&nbsp;&nbsp;
			商品名：<%=goods.getName() %>&nbsp;&nbsp;
			单价：<%=goods.getPrice() %>&nbsp;&nbsp;
			数量：<%=goods.getNum() %>&nbsp;&nbsp;
			总价：<%=order.getOrdertotal() %>&nbsp;&nbsp;
		
			<br />--------------------------------------------------------------------------<br />
			<br/>
			<%
	}
	%>

	共计：<%=maxmoney%><br />
	消费时间：<%=order.getDatetime() %>&nbsp;&nbsp;
	用户名：<%=username %>&nbsp;
	<% 
}else{
	response.setHeader("refresh", "2;URL=index.jsp");
}
%>
</body>
</html>