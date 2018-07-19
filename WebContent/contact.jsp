<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Contact</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!--// bootstrap-css -->
<!-- css -->
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<!--// css -->
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<!-- font -->
<link href='http://fonts.googleapis.com/css?family=Francois+One' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Cinzel+Decorative:400,700,900' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700italic,700,400italic,300italic,300' rel='stylesheet' type='text/css'>
<!-- //font -->
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

function func2() {
    //iframe层
    layer.open({
        type: 2,
        title: '登录',
        shadeClose: true,
        shade: 0.8,
        area: ['500px', '400px'],
        content: 'login.jsp' //iframe的url
    });
    
}
function func3() {
    //iframe层
    layer.open({
        type: 2,
        title: '注册',
        shadeClose: true,
        shade: 0.8,
        area: ['500px', '600px'],
        content: 'register.jsp' //iframe的url
    });
    
}
function func4() {
    //iframe层
    layer.open({
        type: 2,
        title: '个人信息',
        shadeClose: true,
        shade: 0.8,
        area: ['500px', '600px'],
        content: 'Usermessage.jsp' //iframe的url
    });
    
}
function func5() {
    //iframe层
    layer.open({
        type: 2,
        title: '个人购物车',
        shadeClose: true,
        shade: 0.8,
        area: ['500px', '600px'],
        content: 'Usercart11.jsp' //iframe的url
    });
    
}
function func6() {
    //iframe层
    layer.open({
        type: 2,
        title: '个人订单',
        shadeClose: true,
        shade: 0.8,
        area: ['500px', '600px'],
        content: 'Userorder11.jsp' //iframe的url
    });
    
}
</script>
<body>
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
								<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">Menu						
								</button>
							<!-- Collect the nav links, forms, and other content for toggling -->
							<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
								<ul class="nav navbar-nav">
									<li><a href="index.jsp">Home</a></li>
									<li><a href="menu.jsp">Menu</a></li>
					<li><a href="news.jsp">News & Events</a></li>
					 <li><a href="contact.jsp">Personal</a></li> 
					<li><a href="javascript:func2()">Login</a></li>
					<li><a href="javascript:func3()">Register</a></li>
									<div class="clearfix"> </div>
								</ul>	
							</div>	
						</nav>		
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
		<!-- //banner -->
	</div>
	<!-- contact -->
	<div class="contact-content">
		<div class="container">
			<div class="contact-heading">
				<h2>个人中心</h2>
			</div>		
			<div class="map">
			<table border="0">
    <tr>
    
        <td><img src="images/c1.jpg" alt="" />
        
        
  <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
								<ul class="nav navbar-nav">
								<li><a href="javascript:func4()">个人信息</a></li>
								<li><a href="javascript:func5()">购物车</a></li>
								<li><a href="javascript:func6()">订单</a></li>
									<!-- <li><a href="Usermessage.jsp">个人信息</a></li>
									<li><a href="Usercart.jsp">购物车</a></li>
					              <li><a href="Userorder.jsp">订单</a></li>	 -->				
									<div class="clearfix"> </div>
								</ul>	
							</div>

 
        </td>
        
                                           
    </tr>
</table>					
			</div>
			<div class="contact-form">
				<h3> Appraise </h3>
				<form action=Leavemessage method="post">
					<input type="text" name="name" placeholder="Name" required="">
					<input type="text" name="num" placeholder="Number" required="">
					<input type="text" name="pet_name" placeholder="Petname" required="">
					<textarea name="content" placeholder="Content" required=""></textarea>
					<input type="submit" value="SEND">
				</form>
			</div>
			
	<!-- //contact -->
	<!-- footer -->

	<!-- //footer -->
	<!-- copyright -->
	<div class="copyright">
		<div class="container">
			<div class="w3agile-list">
				<ul>
					<li><a href="menu.jsp">Menu</a></li>
					<li><a href="news.jsp">News & Events</a></li>
					<li><a href="contact.jsp">Personal</a></li>
					<li><a href="javascript:func2()">Login</a></li>
					<li><a href="javascript:func3()">Register</a></li>
				</ul>
			</div>
			<div class="agileinfo">
				
			</div>
		</div>
	</div>
	<!-- //copyright -->
</body>	
</html>