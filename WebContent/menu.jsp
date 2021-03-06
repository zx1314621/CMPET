<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Menu</title>
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
	<!-- menu -->
	<div class="menu">
		<div class="container">
			<div class="menu-heading">
				<h2>Our Menu</h2>
			</div>
			<div class="menu-top-grids">
				<div class="w3ls-menu-grids">
					<div class="col-md-3 menu-grid">
						<div class="agile-menu-grid">
							<a href="single.jsp?image=1">
								<img src="images/m1.jpg" alt="" />
								<div class="agileits-caption">
									<h4>拉布拉多</h4>
									<p>$10</p>
								</div>
							</a>
						</div>
					</div>
					<div class="col-md-3 menu-grid">
						<div class="agile-menu-grid">
							<a href="single.jsp">
								<img src="images/m2.jpg" alt="" />
								<div class="agileits-caption">
									<h4>拉布拉多</h4>
									<p>$15</p>
								</div>
							</a>
						</div>
					</div>
					<div class="col-md-3 menu-grid">
						<div class="agile-menu-grid">
							<a href="single.jsp">
								<img src="images/m3.jpg" alt="" />
								<div class="agileits-caption">
									<h4>比熊</h4>
									<p>$18</p>
								</div>
							</a>
						</div>
					</div>
					<div class="col-md-3 menu-grid">
						<div class="agile-menu-grid">
							<a href="single.jsp">
								<img src="images/m4.jpg" alt="" />
								<div class="agileits-caption">
									<h4>金毛 </h4>
									<p>$21</p>
								</div>
							</a>
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="w3ls-menu-grids agileinfo">
					<div class="col-md-3 menu-grid">
						<div class="agile-menu-grid">
							<a href="single.jsp">
								<img src="images/m5.jpg" alt="" />
								<div class="agileits-caption">
									<h4>中华田园猫</h4>
									<p>$10</p>
								</div>
							</a>
						</div>
					</div>
					<div class="col-md-3 menu-grid">
						<div class="agile-menu-grid">
							<a href="single.jsp">
								<img src="images/m6.jpg" alt="" />
								<div class="agileits-caption">
									<h4>狮子猫</h4>
									<p>$15</p>
								</div>
							</a>
						</div>
					</div>
					<div class="col-md-3 menu-grid">
						<div class="agile-menu-grid">
							<a href="single.jsp">
								<img src="images/m7.jpg" alt="" />
								<div class="agileits-caption">
									<h4>贵宾犬</h4>
									<p>$18</p>
								</div>
							</a>
						</div>
					</div>
					<div class="col-md-3 menu-grid">
						<div class="agile-menu-grid">
							<a href="single.jsp">
								<img src="images/m8.jpg" alt="" />
								<div class="agileits-caption">
									<h4>秋田犬 </h4>
									<p>$21</p>
								</div>
							</a>
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="w3ls-menu-grids wthree-menu-grids">
					<div class="col-md-3 menu-grid">
						<div class="agile-menu-grid">
							<a href="single.jsp">
								<img src="images/m9.jpg" alt="" />
								<div class="agileits-caption">
									<h4>蝴蝶犬</h4>
									<p>$10</p>
								</div>
							</a>
						</div>
					</div>
					<div class="col-md-3 menu-grid">
						<div class="agile-menu-grid">
							<a href="single.jsp">
								<img src="images/m10.jpg" alt="" />
								<div class="agileits-caption">
									<h4>天使猫</h4>
									<p>$15</p>
								</div>
							</a>
						</div>
					</div>
					<div class="col-md-3 menu-grid">
						<div class="agile-menu-grid">
							<a href="single.jsp">
								<img src="images/m11.jpg" alt="" />
								<div class="agileits-caption">
									<h4>波斯猫</h4>
									<p>$18</p>
								</div>
							</a>
						</div>
					</div>
					<div class="col-md-3 menu-grid">
						<div class="agile-menu-grid">
							<a href="single.jsp">
								<img src="images/m12.jpg" alt="" />
								<div class="agileits-caption">
									<h4>比熊 </h4>
									<p>$21</p>
								</div>
							</a>
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
	</div>
	<!-- //menu -->
	<!-- footer -->
	<div class="footer">
		<div class="container">
			<div class="footer-grids">
				<div class="footer-heading">
					<!-- <h3>Get in touch with us</h3> -->
				</div>
				<div class="footer-icons">
					<!-- <ul>
						<li><a href="#" class="twitter"><i class="fa fa-twitter"></i></a><span>Twitter</span></li>
						<li><a href="#" class="twitter facebook"><i class="fa fa-facebook"></i></a><span>Facebook</span></li>
						<li><a href="#" class="twitter chrome"><i class="fa fa-google-plus"></i></a><span>Google +</span></li>
						<li><a href="#" class="twitter dribbble"><i class="fa fa-dribbble" aria-hidden="true"></i></a><span>Dribbble</span></li>
					</ul> -->
				</div>
			</div>
		</div>
	</div>
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