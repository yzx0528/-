<%@ page language="java" contentType="text/html;charset=utf-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.cnstrong.javabean.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
//减少购买量
 function decrease(n){
 	var buynum = document.getElementById("buynum"+n).value;
 	var limit = document.getElementById("limit").value;
 	buynum -- ;
 	
 	if(buynum<0)
 		buynum = 0;
 	if(buynum >limit){
 		alert("最多只能购买"+limit+"件！");
 		buynum = limit;
 	}
 	document.getElementById("buynum"+n).value = buynum;
 }
 //增加购买量
 function increase(n){
 	var buynum = document.getElementById("buynum"+n).value;
 	var limit = document.getElementById("limit").value;
 	buynum ++ ;
 	
 	if(buynum<0)
 		buynum = 0;
 	if(buynum >limit){
 		alert("最多只能购买"+limit+"件！");
 		buynum = limit;
 	}
 	document.getElementById("buynum"+n).value = buynum;
 }
 //判断购买量是否符合限制条件
 function changenum(n){
	var buynum = document.getElementById("buynum"+n).value;
 	var limit = document.getElementById("limit").value;
 	alert(buynum);
 	alert(limit);
 	if(buynum<0)
 		buynum = 0;
 	else if(buynum < limit){
 		alert("最多只能购买"+limit+"件！");
 		buynum = limit;
 		document.getElementById("buynum"+n).value = buynum;
 	}else{
	 	location.href = "cartProcess.jsp?action=changebuynum&id="+n+"&buynum="+buynum; 
 	}
 }

</script>
  <style>
  li{
  float:left; list-style: none;
  font-size: 20px;
  margin: 5px;
  }
  body{
   background-size:cover;
   font-size:15px;
   text-align:center;
  }
  
  </style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body  background="img/background.jpg">
  	<center>
  		<!-- 用表格来设计主界面 -->
  		<table width=100% border=1>
  			<tr bgcolor="white">
  			<td height=50px colspan=6>
  			<table width=100% border=0 bgcolor="bcb5d7">
  				<tr>
  					<td><%@ include file="top.jsp" %></td>
  				</tr>
  			</table>
  			</td>
  			</tr>
  			<tr><td colspan="6">
  			<jsp:useBean id= "mycart" class = "com.cnstrong.javabean.shopcar" scope="session"></jsp:useBean>
  			<%
  			 List buylist = mycart.getBuylist();
  			 double total = 0;
  			 %>
  			<table bgcolor = #FFFFCC border = "1">
  			<tr class = "two">
  				<td colspan = "5">购物车</td>
  			</tr>
  			<tr>
  			 <td width = "20%">名称</td>
  			 <td>单价（元）</td>
  			 <td>购买数量</td>
  			 <td>总价（元）</td>
  			 <td>操作</td>
  			</tr>
  			<%
  			if(buylist == null ||buylist.size() == 0)
  			{
  			 %>
  			<tr>
  			 <td colspan = "5">购物车为空！</td>
  			</tr>
  			<%
  			}else{
  			 for(int i=0;i<buylist.size();i++)
  			 {
  			 	goodsBean single = (goodsBean)buylist.get(i);
  			 	String pro=single.getProdno();
  			 	String name = single.getName();
  			 	double price = single.getPrice();
  			 	double num = single.getNum();
  			 	double pay=price*num;
  			 	System.out.println(pay);
  			 	total+=pay;
  			 	%>
  			 <tr>
  			  <td><%=name %></td>
  			  <td><%=price %></td>
  			  <td>
  			  <table width = 100%>
  			  <tr><td>
  			  <input class = "buttontype" type = "button" value = "-" id = "decrease<%=pro %>"
  			  	size ="3" onclick="decrease(<%=pro %>);"/>
  			  <input class = "three" type = "text" value = "<%=num %>" 
  			  	id = "buynum<%=pro  %>" size = "5"/>
  			  <input class = "buttontype" type = "button" value = "+" id = "increase<%=pro  %>"
  			  	size ="3" onclick="increase(<%=pro  %>);"/>
  			  	<br/>(上限：100)
  			  <input type = "hidden" id = "limit" value = "100"/>
  			  <input type ="hidden" id = "prodno<%=i %>" value = "<%=single.getProdno() %>"/>
  			  </td></tr>
  			  <input class = "buttontype" type = "button" value = "修改" id="changenum(<%=pro  %>);"
  			  	size ="3" onclick="changenum(<%=pro  %>);"/>
  			  </td></tr>
  			  
  			  </table>
  			  </td>
  			  <td><%=Math.round(pay*100)/100.00 %></td>
  			  <td><a href = "cartProcess.jsp?action=remove&id=<%=single.getProdno() %>">删除商品</a></td>
  			 </tr>
  			 <%
  			 }}
  			
  			
  			 %>
  			 <tr>
  			 <td colspan = "5">应付金额：<%=Math.round(total*100)/100.00 %></td>
  			 </tr>
  			</table>
  			</td></tr>
  			<tr>
  			<td colspan = "5" bgcolor = "white">
  			<a href = "showbook1.jsp">继续购物</a>
  			<a href = "cartProcess.jsp?action=clear">清空购物车</a>
  			<a href = "order.jsp?action=add&maxmoney=<%=Math.round(total*100)/100.00 %>">提交订单</a>
  			</td>
  			</tr>
  			<tr bgcolor="white">
  				<td colspan=6><%@include file="bottom.html" %></td>
  			</tr>
  		</table>
  	</center>
  </body>
</html>