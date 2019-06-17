<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <%	
 
  String username = (String)session.getAttribute("username");

   %>
<tr bgcolor="bcb5d7">
<c:choose>
<c:when test="${empty sessionScope.username }">
	<td width=7%>
		<a href = "userlogin.jsp">请登录</a>
		
	</td>
	<td width=7%><a href = "userregister.jsp">免费注册</a></td>
		<td></td><td></td>
	<td width=7%><a href = "#" onclick="f();">我的购物车</a></td>
	<td width=7%><a href="userloginreset.jsp">我的账户</a></td>
</tr>

</c:when>
<c:otherwise>
	<td width=7%>欢迎您,<%=username%></td>
	<td width=7%><a href="userloginout.jsp">注销账号</a></td>
		<td></td><td></td>
	<td width=7%><a href="showCart.jsp">我的购物车</a></td>
	<td width=7%><a href="userloginreset.jsp">我的账户</a></td>
</tr>

</c:otherwise>
</c:choose>
<tr bgcolor="bcb5d7">   

	<td id="Title"colspan=6 style="background-repeat:no-repeat" >
	
		<div id="header">
<h1 >网上书城</h1>
</div>
	</td>
</tr>
<tr>
	<td colspan=6>
		<ul id="menu">
			<li class="munu1"><a href="index.jsp">商城首页</a></li>
			<li class="munu1"><a href="showbook1.jsp">哲学类</a></li>
			<li class="munu1"><a href="showbook2.jsp">历史类</a></li>
			<li class="munu1"><a href="showbook3.jsp">文学类</a></li>
			<li class="munu1"><a href="showbook4.jsp">武侠小说</a></li>
		</ul>
	</td>
</tr>
