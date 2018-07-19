<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>News & Events</title>
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
	<!-- news -->
	<div class="news">
		<div class="container">
			<div class="news-heading">
				<h2>News &amp; Events</h2>
			</div>
			<div class="news-grids">
				<div class="news-grids-heading">
					<h3>Latest</h3>
				</div>
				<div class="col-md-4 news-grid">
					<div class="agile-news-grid-info">
						<div class="news-grid-info-img">
							<a href="single.jsp"><img src="images/n1.jpg" alt=""></a>
						</div>
						<div class="news-grid-info-bottom">
							<div class="date-grid">
								<div class="admin">
									<a href="#"><i class="fa fa-user" aria-hidden="true"></i> Admin</a>
								</div>
								<div class="time">
									<p><i class="fa fa-calendar" aria-hidden="true"></i> 7 11,2018</p>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="news-grid-info-bottom-text">
								<a href="single.jsp">金毛寻回犬它是最常见的家犬之一，因为它很容易养，有耐心并且对主人要求不多，只要定期的运动，食物和兽医体检就可以了</a>
								<p>金毛的独特之处在于它讨人喜欢的性格，是属于匀称、有力、活泼的一个犬种，特征是稳固、身体各部位配合合理，腿既不太长也不笨拙，表情友善，个性热情、机警、自信而且不怕生。金毛犬最早是一种寻回猎犬。现在大多作为导盲犬与宠物狗。对小孩子或者婴儿十分友善。金毛犬是位列世界犬种智商排行的第四名.</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 news-grid">
					<div class="agile-news-grid-info">
						<div class="news-grid-info-img">
							<a href="single.jsp"><img src="images/n2.jpg" alt=""></a>
						</div>
						<div class="news-grid-info-bottom">
							<div class="date-grid">
								<div class="admin">
									<a href="#"><i class="fa fa-user" aria-hidden="true"></i> Admin</a>
								</div>
								<div class="time">
									<p><i class="fa fa-calendar" aria-hidden="true"></i> 7 11,2018</p>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="news-grid-info-bottom-text">
								<a href="single.jsp">博美是一种紧凑、短背、活跃的玩赏犬，学名哈多利系博美犬（俗称英系博美犬），是德国狐狸犬的一种，原产德国。它拥有柔软、浓密的底毛和粗硬的皮毛</a>
								<p>尾根位置很高，长有浓密饰毛的尾巴卷放在背上。它具有警惕的性格、聪明的表情、轻快的举止和好奇的天性。体型小巧可爱，适合当伴侣犬，白色和棕色的居多。德国狐狸犬，包括荷兰毛狮犬，大型狐狸犬，中型狐狸犬，小型狐狸犬和松鼠犬（也就是博美犬），同时也是很有竞争力的比赛犬。其毛色有白、偏黄奶油、花色、黑、红、棕等。.</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 news-grid">
					<div class="agile-news-grid-info">
						<div class="news-grid-info-img">
							<a href="single.jsp"><img src="images/n3.jpg" alt=""></a>
						</div>
						<div class="news-grid-info-bottom">
							<div class="date-grid">
								<div class="admin">
									<a href="#"><i class="fa fa-user" aria-hidden="true"></i> Admin</a>
								</div>
								<div class="time">
									<p><i class="fa fa-calendar" aria-hidden="true"></i> 7 11,2018</p>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="news-grid-info-bottom-text">
								<a href="single.jsp">泰迪活泼，性情优良，极易近人，是一种忠实的犬种。非常敏捷，聪明而优雅的狗，正方形结构、比例匀称，步伐有力而自信</a>
								<p>头颅顶部稍圆，眉头随浅但很清晰，面颊平坦。眼睛颜色很深呈卵圆形，两眼间距宽，眼神机警。吻部长直而纤细，眼睛下方有轻微诶凹陷。颈部强壮，颈长可以使头部高高抬起。胸部深而扩张，肋部伸展。后脚跟短，与地面垂直.</p>
							</div>
						</div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="event-grids">
				<div class="event-grids-heading">
					<h3>Events</h3>
				</div>
				<div class="event-grids">
					<div class="col-md-8 event-left">
						<div class="event-left-info">
							<h4>拉布拉多.</h4>
							<ul>
								<li><a href="#">拉布拉多又称寻回犬，是一种大型犬类，是非常适合被选作经常出入公共场合的导盲犬或地铁警犬及搜救犬和其他工作犬的狗品种</a></li>
								<li><a href="#">因原产地在加拿大的纽芬兰与拉布拉多省而得名。跟西伯利亚雪撬犬和金毛寻回犬并列三大无攻击性犬类 </a></li>
								<li><a href="#">拉布拉多智商位列世界犬类第六位</a></li>
								<li><a href="#">个性忠诚、大气、憨厚、温和、阳光、开朗、活泼，智商极高，也对人很友善</a></li>
								<li><a href="#">拉布拉多猎犬有四种颜色，分别为：黑色、黄色、巧克力、米白色。最常见的是黑色，黄色</a></li>
								<li><a href="#">在美国犬业俱乐部中拉布拉多是目前登记数量最多的品种，对小孩尤其的友善，对犬主人略粘人</a></li>
							</ul>
						</div>
					</div>
					<div class="col-md-4 event-right">
						<div class="event-right-info">
						
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
	</div>
	<!-- //news -->
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
</body>	
</html>