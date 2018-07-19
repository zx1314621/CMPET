<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>添加用户</title>
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
        title: '个人资料',
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
      <li class="layui-nav-item"><a href="index.jsp">退了</a></li>
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
            <dd><a href="javascript:func2()">添加分类</a></dd>
            <dd><a href="Addpet.jsp">添加宠物</a></dd>           
          </dl>
        </li>
        <li class="layui-nav-item layui-nav-itemed">
          <a class="" href="javascript:;">订单管理</a>
          <dl class="layui-nav-child">
            <dd><a href="Addorder.jsp">添加订单</a></dd>
            <dd><a href="Oederlist.jsp">查看订单</a></dd>
          </dl>
        </li>
      </ul>
    </div>
  </div>
  
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 15px;">
<form class="layui-form" action=Adduser method="post">
  <div class="layui-form-item">
    <label class="layui-form-label">用户名</label>
    <div class="layui-input-block">
      <input type="text" name="username" required  lay-verify="required" placeholder="请输入用户名" autocomplete="off" class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">密码</label>
    <div class="layui-input-inline">
      <input type="password" name="password" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
    </div>
    <div class="layui-form-mid layui-word-aux"></div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">地区</label>
    <div class="layui-input-block">
      <select name="address" lay-verify="required">
        <option value=""></option>
        <option value="北京">北京</option>
        <option value="上海">上海</option>
        <option value="广州">广州</option>
        <option value="杭州">杭州</option>
        <option value="重庆">重庆</option>
      </select>
    </div>
  </div>
    <div class="layui-form-item">
    <label class="layui-form-label">姓名</label>
    <div class="layui-input-block">
      <input type="text" name="name" required  lay-verify="required" placeholder="请输入姓名" autocomplete="off" class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">联系方式</label>
    <div class="layui-input-block">
      <input type="text" name="num" required  lay-verify="required" placeholder="请输入联系方式" autocomplete="off" class="layui-input">
    </div>
  </div>

  <div class="layui-form-item">
    <div class="layui-input-block">
    <button class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>
      <!-- <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button> -->
      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
    </div>
  </div>
</form>
 
<script>
//Demo

</script>
</div>
  </div>
  
  <div class="layui-footer">
    <!-- 底部固定区域 -->
   
  </div>
</div>
<script src="../src/layui.js"></script>
<script>
//JavaScript代码区域
layui.use('element', function(){
  var element = layui.element;
  
});
</script>
</body>
</html>