<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Single</title>
<style>
.button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 8px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    cursor: pointer;
}
.button3 {
    background-color: white; 
    color: black; 
    border: 2px solid #f44336;
}
.button3:hover {
    background-color: #f44336;
    color: white;
}
</style>
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


function doSubmit(){
documnt.form[0].action="Buy"
documnt.form[0].submit;
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
									<li><a href="menu.html">Menu</a></li>
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
	<!-- single -->
	<div class="blog">
				<!-- container -->
				<div class="container">
					<div class="col-md-8 blog-top-left-grid">
						<div class="left-blog left-single">
							<div class="blog-left">
								<div class="single-left-left">
									<p>贵宾犬 &nbsp;&nbsp; ￥18 &nbsp;&nbsp;  &nbsp;&nbsp; <a href="#">Comments (2)</a></p>
									<img src="images/m7.jpg" alt="">
								</div>
								<div class="blog-left-bottom">
									<p>小狗刚生下来的时候，毛是棕色的，可是它长大以后就不再是棕色的了，而变成了深黄色。 
                                                                                                                        小狗的性格非常温和。如果你对它好，它就会用头顶你的腿，好像是在向你撒娇 .
									</p>
								</div>
								<div class="blog-left-bottom left-bottom">
									<p>小狗的警惕性非同寻常，它有一个特别灵敏的鼻子，能闻到3里以外东西的气息，吃食物时，它总要低下头闻一闻。它还有一双耳朵，
									每当听到特别的声音，它的耳朵总会竖起来，认真地倾听着外面的动静！因而，人们养它来看大门，它是人类的忠实的朋友 .
									</p>
								</div>
								<div class="blog-left-bottom left-bottom">
									<p>小狗是一种外形可爱的小动物。你看，它的毛是雪白与土黄两种颜色掺在一起的，摸起来那么软，那么舒服。
									它的耳朵像两片灰色的小面片，只有饺子皮般大小；它的鼻子是黑色的，很小很小；小腿短短的，跑起来像在滚动，从后面看，屁股一直在左右摆动，
									非常有趣；它的尾巴向上翘着，像一个倒立的逗号 .
									</p>
								</div>
							</div>
							<div class="response">
								<h3>Responses</h3>
								<div class="media response-info">
									<div class="media-left response-text-left">
										<a href="#">
											<img class="media-object" src="images/t1.jpg" alt="">
										</a>
										<h5><a href="#">Admin</a></h5>
									</div>
									<div class="media-body response-text-right">
										<p>非常好，收到狗狗了就是网上看好的狗狗，商家发货还是挺快的，付款之后第二天就收到狗狗了.</p>
										<ul>
											<li>7 9, 2018</li>
											<li><a href="single.jsp">Reply</a></li>
										</ul>
										<div class="media response-info">
											<div class="media-left response-text-left">
												<a href="#">
													<img class="media-object" src="images/t2.jpg" alt="">
												</a>
												<h5><a href="#">Admin</a></h5>
											</div>
											<div class="media-body response-text-right">
												<p>谢谢.</p>
												<ul>
													<li>7 10, 2018</li>
													<li><a href="single.jsp">Reply</a></li>
												</ul>		
											</div>
											<div class="clearfix"> </div>
										</div>
									</div>
									<div class="clearfix"> </div>
								</div>
								<div class="media response-info">
									<div class="media-left response-text-left">
										<a href="#">
											<img class="media-object" src="images/t3.jpg" alt="">
										</a>
										<h5><a href="#">Admin</a></h5>
									</div>
									<div class="media-body response-text-right">
										<p>非常方便。在网上能直接挑选，然后卖家发货挺快的，收到猫猫的时候兴奋坏啦。感谢卖家的耐心指导(*^__^*) .</p>
										<ul>
											<li>7 11, 2018</li>
											<li><a href="single.jsp">Reply</a></li>
										</ul>		
									</div>
									<div class="clearfix"> </div>
								</div>
							</div>					
		<form action=Single method="post">
				  数量<input type="text" name="num" placeholder="数量" >
		<button id="add" class="button button3" name="add" 
		         type="submit"  value="1">加入购物车</button>
		  		  
		<button id="buy" class="button button3" name="buy" 
		        type="submit"  value="1"><i>立即购买</button>
	      	<!-- <input type="submit" class="button button3" name="Add" value="加入购物车"> 																
				<input type="submit" class="button button3" name="Buy" value="立即购买">  -->
				 <!-- <input type="button" class="button button3" 
				 onclick="doSubmit()" value="立即购买"/>	 -->										 
		</form>			
						</div>
					</div>
					<div class="col-md-4 blog-top-right-grid">	
					</div>
					<div class="clearfix"> </div>
				</div>
				<!-- //container -->
	</div>
	<!-- //single -->
	<!-- footer -->
	<div class="footer">
		<div class="container">
			<div class="footer-grids">
				<div class="footer-heading">
				</div>
				<div class="footer-icons">		
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
			<div class="agileinfo">	</div>
		</div>
	</div>
</body>	
</html>