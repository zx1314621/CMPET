<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>宠物网</title>
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
	<script src="js/jquery.vide.min.js"></script>
	<div data-vide-bg="video/cook">
		<!-- banner -->
		<div class="banner">
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
									<li><a class="active" href="index.jsp">Home</a></li>
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
				<div class="banner-info">
					<h2>A pet with you</h2>
					<p>It has a pair of ears, whenever a special sound is heard.Its ears always stand up and listen carefully to the movement outside .</p>
				</div>
				<div class="banner-grads">
					<div class="col-md-4 banner-grad">
						<div class="banner-grad-img">
							<img src="images/b1.jpg" alt="" />
							<h4>土耳其梵猫</h4>
						</div>
					</div>
					<div class="col-md-4 banner-grad">
						<div class="banner-grad-img">
							<img src="images/b2.jpg" alt="" />
							<h4>阿拉斯加</h4>
						</div>
					</div>
					<div class="col-md-4 banner-grad">
						<div class="banner-grad-img">
							<img src="images/b3.jpg" alt="" />
							<h4>拉布拉多</h4>
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
		<!-- //banner -->
	</div>
	<!-- special -->
	<div class="special">
		<div class="container">
			<div class="special-heading">
				<h3>Today Specials</h3>
			</div>
			<div class="special-grids">
				<div class="col-md-4 w3l-special-grid">
					<div class="col-md-6 w3ls-special-img">
						<div class="w3ls-special-text effect-1">
							<h4>泰迪</h4>
						</div>
					</div>
					<div class="col-md-6 agileits-special-info">
						<h4>泰迪</h4>
						<p>极易近人<br>忠实</p>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="col-md-4 w3l-special-grid">
					<div class="col-md-6 w3ls-special-img wthree-img">
						<div class="w3ls-special-text effect-1">
							<h4>博美</h4>
						</div>
					</div>
					<div class="col-md-6 agileits-special-info">
						<h4>博美</h4>
						<p>开朗活泼<br>充沛忠实</p>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="col-md-4 w3l-special-grid">
					<div class="col-md-6 w3ls-special-img wthree-img1">
						<div class="w3ls-special-text effect-1">
							<h4>拉布拉多</h4>
						</div>
					</div>
					<div class="col-md-6 agileits-special-info">
						<h4>拉布拉多</h4>
						<p>憨厚温和<br>智商极高</p>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="col-md-4 w3l-special-grid">
					<div class="col-md-6 agileits-special-info">
						<h4>波斯猫</h4>
						<p>聪明敏捷<br>文雅善良</p>
					</div>
					<div class="col-md-6 w3ls-special-img wthree-img2">
						<div class="w3ls-special-text effect-1">
							<h4>波斯猫</h4>
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="col-md-4 w3l-special-grid">
					<div class="col-md-6 agileits-special-info">
						<h4>布偶猫</h4>
						<p>温顺好静<br>对人友善</p>
					</div>
					<div class="col-md-6 w3ls-special-img wthree-img3">
						<div class="w3ls-special-text effect-1">
							<h4>布偶猫</h4>
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="col-md-4 w3l-special-grid">
					<div class="col-md-6 agileits-special-info">
						<h4>巴厘猫</h4>
						<p>体态高雅<br>好与人为伴</p>
					</div>
					<div class="col-md-6 w3ls-special-img wthree-img4">
						<div class="w3ls-special-text effect-1">
							<h4>巴厘猫</h4>
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<div class="tlinks">Collect from <a href="http://www.cssmoban.com/" >企业网站模板</a></div>
	<!-- //special -->
	<!-- features -->
	<div class="features">
		<div class="container">
			<div class="features-heading">
				<h3>Our Features</h3>
			</div>
			<div class="features-grids">
				<div class="col-md-4 features-left">
					<div class="features-left-info">
					</div>
				</div>
				<div class="col-md-8 features-right">
					<div class="features-right-info">
						<h4>为顾客提供最好的服务 </h3>
					</div>
					<div class="features-right-grids">
						<div class="features-right-left">
							<div class="features-right-icon effect-2">
								<i class="fa fa-users" aria-hidden="true"></i>
							</div>
						</div>
						<div class="features-right-right">
							<p>方便. </p>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="features-right-grids">
						<div class="features-right-left">
							<div class="features-right-icon effect-2">
								<i class="fa fa-asterisk" aria-hidden="true"></i>
							</div>
						</div>
						<div class="features-right-right">
							<p>安全. </p>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="features-right-grids">
						<div class="features-right-left">
							<div class="features-right-icon effect-2">
								<i class="fa fa-money" aria-hidden="true"></i>
							</div>
						</div>
						<div class="features-right-right">
							<p>更新. </p>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="features-right-grids">
						<div class="features-right-left">
							<div class="features-right-icon effect-2">
								<i class="fa fa-cog" aria-hidden="true"></i>
							</div>
						</div>
						<div class="features-right-right">
							<p>海量信息. </p>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //features -->
	<!-- customer -->
	<div class="customer">
		<div class="container">
			<div class="customer-heading">
				<h3>What Our Customers are Saying</h3>
			</div>
			<div class="customer-heading-grids">
				<div class="col-md-4 customer-grid">
					<div class="customer-info">
						<p>谢谢亲爱的卖家忍痛卖给我这只猫咪，到我家一点都不认生非常乖，跟我家小白能玩一块，非常满意。好评！ </p>
					</div>
					<div class="customer-img">
						<img src="images/c1.jpg" alt="" />
						<h5>Dapibus</h5>
					</div>
				</div>
				<div class="col-md-4 customer-grid">
					<div class="customer-info">
						<p>非常好，收到狗狗了就是网上看好的狗狗，商家发货还是挺快的，付款之后第二天就收到狗狗了.</p>
					</div>
					<div class="customer-img">
						<img src="images/c2.jpg" alt="" />
						<h5>Vulputate</h5>
					</div>
				</div>
				<div class="col-md-4 customer-grid">
					<div class="customer-info">
						<p>非常方便。在网上能直接挑选，然后卖家发货挺快的，收到猫猫的时候兴奋坏啦。感谢卖家的耐心指导(*^__^*) .</p>
					</div>
					<div class="customer-img">
						<img src="images/c3.jpg" alt="" />
						<h5>Interdum</h5>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //customer -->
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