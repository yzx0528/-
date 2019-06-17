<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*,com.cnstrong.javabean.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<jsp:useBean id="mycart" class = "com.cnstrong.javabean.shopcar" scope="session"></jsp:useBean>
<body>
<%
	String action = request.getParameter("action");
	%>
	<%=action %>
	<%
	if(action == null)
	{
		action = "";
	}
	//传递过来的操作数是buy,代表购买
	if(action.equals("buy")){
	
	 //读取该分区的商品集合
	 
	 String type=request.getParameter("goodstype");
	 //获取用户购买的商品id
	 Goods single=new Goods();
	 if(type.equals("fruit")){
		 List fruitlist = (List)session.getAttribute("fruitlist");
		 int id = mytools.strtoint(request.getParameter("id"));
		 single = (Goods)fruitlist.get(id);
	 }else if(type.equals("stationery")){
		 List stationerylist = (List)session.getAttribute("stationerylist");
		 int id = mytools.strtoint(request.getParameter("id"));
		 single = (Goods)stationerylist.get(id);
	 }else if(type.equals("clothes")){
		 List clotheslist = (List)session.getAttribute("clotheslist");
		 int id = mytools.strtoint(request.getParameter("id"));
		 single = (Goods)clotheslist.get(id);
	 }else if(type.equals("electric")){
		 List electriclist = (List)session.getAttribute("electriclist");
		 int id = mytools.strtoint(request.getParameter("id"));
		 single = (Goods)electriclist.get(id);
	 }
	 //获取用户购买的商品的数量
	 int buynum = mytools.strtoint(request.getParameter("buynum"));
	 System.out.println(single.getGoodsname());
	 System.out.println(single.getGoodsprice());
	 System.out.println(single.getGoodstype());
	 System.out.println(buynum);
	 //获取该商品的信息
	 mycart.additem(single, buynum);
	 //转向显示分区商品列表页面，以便用户继续购物
	 //showGoods.jsp
	 response.sendRedirect("showCart.jsp");
	}else if(action.equals("changebuynum")){
		String id=request.getParameter("id");
		int buynum = mytools.strtoint(request.getParameter("buynum"));
		mycart.changebuynum(id,buynum);
		response.sendRedirect("showCart.jsp");
	}
	else if(action.equals("remove")){
		String id=request.getParameter("id");
		System.out.println(id);
		mycart.removeitem(id);
		response.sendRedirect("showCart.jsp");
	}
	else if(action.equals("clear")){
		mycart.clearcart();
		response.sendRedirect("showCart.jsp");
	}
 %>
</body>
</html>