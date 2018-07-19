<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> --%>
    <%@taglib prefix = "c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ page import = "petsshop.Order" %>
<%@ page import = "petsshop.Customer" %>
<%@ page import = "java.util.ArrayList" %> 
<%@ page import = "java.util.List" %>
<%@ page import = "javax.servlet.http.HttpSession "%>
<head>
<title>Contact</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<link href="css/font-awesome.css" rel="stylesheet"> 
<link href='http://fonts.googleapis.com/css?family=Francois+One' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Cinzel+Decorative:400,700,900' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700italic,700,400italic,300italic,300' rel='stylesheet' type='text/css'>
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/SmoothScroll.min.js"></script>
</head>
<script src="layui/layui.js" charset="utf-8"></script>
<script>
layui.use(['form', 'layedit', 'laydate'], function(){
	  var form = layui.form
	  ,layer = layui.layer
	  ,layedit = layui.layedit
	  ,laydate = layui.laydate;	  
});	
function func2() { //iframe层
    layer.open({
        type: 2,
        title: '登录',
        shadeClose: true,
        shade: 0.8,
        area: ['500px', '400px'],
        content: 'login.jsp' //iframe的url
    });    
}
function func3() { //iframe层
    layer.open({
        type: 2,
        title: '注册',
        shadeClose: true,
        shade: 0.8,
        area: ['500px', '600px'],
        content: 'register.jsp' //iframe的url
    });    
}
</script>
<body>
<% 
List<Order>userorders=new ArrayList<Order>();
userorders=(List)session.getAttribute("userorders"); %>
	<div class="bg-img">
		<!-- banner -->
		<div class="banner code-banner">
			<div class="container">
				<div class="header">
					<div class="logo">
						<h1><a href="index.html">PetsShop</a></h1>
					</div>
					<div class="top-nav">
						<nav class="navbar navbar-default">
						</nav>		
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
		<!-- //banner -->
	</div>
			<div class="contact-heading">
				<h2>个人购物车</h2>
			</div>		
			<div class="map">
	<form action=Userbuy method="post">
<table border="1">
  <tr>
  <td>id</td>  <td>买家用户名</td><td>买家电话</td><td>买家地址</td><td>订单状态</td><td>宠物id</td><td>宠物数量</td><td>操作</td>
      </tr>       
<tr>
<c:forEach var="userorders" items="${userorders }" varStatus="status">
	<c:if test="${status.count%2==0 }">
	<tr style="background:#eeeeff"></c:if>
	<c:if test="${status.count%2!=0 }">
	<tr style="background:#dedeff"></c:if>
	<td>${userorders.id }</td>
  <td>${userorders.buyer_username }</td>
          <td>${userorders.buyer_num }</td>
           <td>${userorders.buyer_address }</td>
            <td>${userorders.state }</td>
             <td>${userorders.pet_id }</td>
           <td>${userorders.pet_num }</td>  
           <td>  
           	<button id="buy" class="button button3" name="buy" 
		        type="submit"  value="${userorders.id }">购买</button>
           
           <!-- <input type="submit" class="button button3" value="购买">  </td> -->                                      
 </c:forEach>
     </tr>
</table>	
</form>				
</div>
</body>	
</html>