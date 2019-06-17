<%@ page language="java" contentType="text/html;charset=utf-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.*,com.cnstrong.javabean.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function decrease(n){
		var buynum = parseInt(document.getElementById("buynum"+n).value);
		var limit = parseInt(document.getElementById("limit"+n).value);
		buynum--;
		if(buynum<0)	buynum=0;
		if(buynum>limit){
			alert("最多只能购买"+limit+"件！");
			buynum = limit;
		}
		document.getElementById("buynum"+n).value = buynum;
	}
	//增加购买量
	function increase(n){
		var buynum = document.getElementById("buynum"+n).value;
		
		var limit = document.getElementById("limit"+n).value;
		buynum++;
		if(buynum<0)	buynum=0;
		if(buynum>limit){
			alert("最多只能购买"+limit+"件！");
			buynum = limit;
		}
		document.getElementById("buynum"+n).value = buynum;
	}
	//判断购买量是否符合限制条件
	function itembuy(n){
		var buynum = parseInt(document.getElementById("buynum"+n).value);
		var limit = parseInt(document.getElementById("limit"+n).value);
		
		if(buynum<0)	buynum=0;
		if(buynum>limit){
			alert("最多只能购买"+limit+"件！");
			buynum = limit;
		}
		document.getElementById("buynum"+n).value = buynum;
		location.href = "cartProcess.jsp?action=buy&goodstype=electric&id="+n+"&buynum="+buynum;
	}
</script>
</head>
<body background="img/bgpic.jpg">
	<center>
		<%
		    GoodsDao goodsdao=new GoodsDao();
		    List list=goodsdao.findtype("武侠小说");
		    session.setAttribute("electriclist",list);
		%>
		<!-- 用表格来设计主界面 -->
		<table width=100% border=1>
			<tr bgcolor="bcb5d7">
				<td height=50px colspan=6>
					<table width=100% border=0>
						<tr>
							<td><%@ include file="top.jsp"%></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					<!-- 读取商品集合并显示 --> <%
 	List electriclist = (List) session.getAttribute("electriclist");
 %>
					<table border="1" width=100% class="one" bgcolor=#FFFF99>
						<tr>
							<td colspan="6" class="three"><b>欢迎选购</b></td>
						</tr>
						<tr>
							<td width=15%>名称</td>
							<td>实拍图片</td>
							<td>详细介绍</td>
							<td>单价（元）</td>
							<td>购买（kg）</td>
						</tr>
						<%
							if (electriclist == null || electriclist.size() == 0) {
						%>
						<tr>
							<td colspan="3">目前没有商品！</td>
						</tr>
						<%
							} else {
								for (int i = 0; i < electriclist.size(); i++) {
									Goods single = (Goods) electriclist.get(i);
									int index = i;
						%>

						<tr>
							<td>
							<%=single.getGoodsname()%><br />
							<%=single.getGoodsid()%>
							</td>
							<td>
							<img src="<%=single.getGoodspicture()%>" /height=150px>
							</td>
							<td style="text-align: left"> 
							<%=single.getGoodsdescription()%>
							</td>
							<td>
							<%=single.getGoodsprice()%>
							</td>
							
							<td>
							<input class="two" type="button" style="background-color: white;" value="-" id="decrease<%=i %>" 
                                               size="3" onclick="decrease(<%=i %>);" /> 
                   
                            <input class="two" type="text" style="text-align: right;" value="1" id="buynum<%=i %>" size="5" />

                            <input class="two" type="button" style="background-color: white;" value="+"
								               id="increasee<%=i %>" size="3" onclick="increase(<%=i %>);" />
								
                            <input type="hidden" id="limit<%=i %>" value="100"> <br />
                            <p class="four">(单次限购：100)</p> 
								<%
 	                                String buynum = request.getParameter("buynum" + i);
                                %> 
                          
								<input type="button" class="buttontype" value="加入购物车"
								onclick="itembuy(<%=i %>)" /> 
								<jsp:useBean
									id="mycart" class="com.cnstrong.javabean.shopcar"
									scope="session">
								</jsp:useBean>
								
							</td>
						</tr>
						<%
							}
							}
						%>
						<tr>
							<td colspan="6"><a href="showCart.jsp">查看购物车</a></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr bgcolor="white">
				<td colspan=6><%@include file="bottom.html"%></td>
			</tr>
		</table>
	</center>
</body>
</html>