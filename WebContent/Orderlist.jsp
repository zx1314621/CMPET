<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix = "c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ page import = "petsshop.Order" %>
<%@ page import = "petsshop.Customer" %>
<%@ page import = "java.util.ArrayList" %> 
<%@ page import = "java.util.List" %>
<%@ page import = "java.io.IOException" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.PreparedStatement" %>
<%@ page import = " petsshop.DBUtils" %>
<%@ page import = "javax.servlet.http.HttpSession "%>
<%@ page import = "java.sql.SQLException"%>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>订单列表</title>
  <link rel="stylesheet" href="layui/css/layui.css">
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
        title: '个人信息',
        shadeClose: true,
        shade: 0.8,
        area: ['500px', '400px'],
        content: 'Managermessage.jsp' //iframe的url
    });
    
}
function func3() {
    //iframe层
    layer.open({
        type: 2,
        title: '修改密码',
        shadeClose: true,
        shade: 0.8,
        area: ['500px', '600px'],
        content: 'Managerchangepassword.jsp' //iframe的url
    });
    
}

</script>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <div class="layui-logo">后台管理</div>

    <ul class="layui-nav layui-layout-right">
      <li class="layui-nav-item">
        <a href="javascript:;">
          <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
          管理员
        </a>
        <dl class="layui-nav-child">
          <dd><a href="javascript:func2()">基本资料</a></dd>
          <dd><a href="javascript:func3()">修改密码</a></dd>        
        </dl>
      </li>
      <li class="layui-nav-item"><a href="index.jsp">退出</a></li>
    </ul>
  </div>
  
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item layui-nav-itemed">
          <a class="" href="javascript:;">用户管理</a>
          <dl class="layui-nav-child">
            <dd><a href="Userlist.jsp">用户列表</a></dd>
            <dd><a href="Adduser.jsp">添加用户</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;">宠物管理</a>
          <dl class="layui-nav-child">
          <dd><a href="Petlist.jsp">查看宠物</a></dd>
            <dd><a href="Addpet.jsp">添加分类</a></dd>
            <dd><a href="Addsort.jsp">添加宠物</a></dd>           
          </dl>
        </li>
        <li class="layui-nav-item layui-nav-itemed">
          <a class="" href="javascript:;">订单管理</a>
          <dl class="layui-nav-child">
            <dd><a href="Addorder.jsp">添加订单</a></dd>
            <dd><a href="Orderlist.jsp">查看订单</a></dd>
          </dl>
        </li>
      </ul>
    </div>
  </div>
  
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 15px;">          
<form class="layui-form"  id="chooseForm" action="queryActivity.action" method="post">
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
  <legend>订单信息</legend>
</fieldset>
</form> 

<%
List<Order>userorders=new ArrayList<Order>();
Connection conn = null;
PreparedStatement stmt=null;
ResultSet rs = null;	
	 
String sql = "select * from order1;";		 
try{
   conn = DBUtils.getConnection();
   stmt = conn.prepareStatement(sql);
	rs =stmt.executeQuery();
	int id=0;
	String buyer_username;
    int buyer_num = 0;
	String buyer_address=null;
	String state=null;
	int pet_id=0;
	int pet_num=0;
	while(rs.next()){				
	   Order order=new Order();	
	   id = rs.getInt(1);
	   buyer_username = rs.getString(2);
	   buyer_num = rs.getInt(3);
	   buyer_address=rs.getString(4);
	   state=rs.getString(5);
	   pet_id=rs.getInt(6);
	   pet_num=rs.getInt(7);	
	   order.setId(id);
	   order.setBuyer_address(buyer_address);
      order.setBuyer_num(buyer_num);
	   order.setBuyer_username(buyer_username);
	   order.setPet_id(pet_id);
	   order.setPet_num(pet_num);
	   order.setState(state);
	
      userorders.add(order);
			}
				stmt.close();
			    conn.close();
			    HttpSession session2 = request.getSession(true);
				session2.setAttribute("userorders11",userorders);
					 }catch(SQLException e){
					 e.printStackTrace() ;
	  }								
%>
<%-- <% 
List<Order>userorders1=new ArrayList<Order>();
userorders1=(List)session.getAttribute("userorders11"); %> --%>
 <table class="layui-table">
  <thead>
    <tr>
      <th>订单号</th>
      <th>买方用户名</th>
      <th>买方电话</th>
      <th>买方地址</th>
      <th>宠物id</th>
      <th>宠物数量</th>
      <th>订单状态</th>
       <th>操作</th>
    </tr> 
  </thead>
  <tbody>
  <form action = #  method = "post">
<c:forEach var = "userorders11" items = "${userorders11}">
<tr>
    <td>${userorders11.id }</td>
    <td>${userorders11.buyer_username }</td>
    <td>${userorders11.buyer_num }</td>
    <td>${userorders11.buyer_address }</td>
    <td>${userorders11.pet_id }</td>
    <td>${userorders11.pet_num }</td>
    <td>${userorders11.state }</td>
    <td><button class="layui-btn layui-btn-normal" id="activityId" name="activityId"  type="submit"  value="${activityList.id}"><i class="layui-icon">&#xe615;</i> 查看</button>
    <button class="layui-btn layui-btn-danger" id="activityId" name="activityId"  type="submit"  value="${activityList.id}"><i class="layui-icon">&#xe640;</i> 删除</button>
    <button class="layui-btn layui-btn-warm" id="activityId" name="activityId"  type="submit"  value="${activityList.id}"><i class="layui-icon">&#xe642;</i> 编辑</button></td>  
</tr>
</c:forEach>
</form>
  </tbody>
</table>   
        

<script src="layui/layui.js" charset="utf-8"></script>

 <script>

    //Demo

    layui.use('form', function(){

        var form = layui.form;

        //监听提交

        form.on('submit(formDemo)', function(data){

            layer.msg(JSON.stringify(data.field));

            return false;

        });

    });

</script>

</div>
  </div>
  
  <div class="layui-footer">
    <!-- 底部固定区域 -->
   
  </div>
</div>
<script src="../src/layui.js"></script>
</body>
</html>