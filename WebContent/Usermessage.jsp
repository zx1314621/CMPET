<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ page import ="javax.servlet.http.HttpSession "%>
 <%@ page import="petsshop.Customer" %>
<head>
  <meta charset="utf-8">
  <title>个人信息</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="layui/css/layui.css"  media="all">
</head>
<body>
<% 
Customer customer=new Customer();
customer=(Customer)session.getAttribute("customer"); %>
<form class="layui-form"  id="chooseForm" action=     method="post">
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
  <legend>基本信息</legend>
</fieldset>

 <div class="layui-form-item">
   <div class="layui-inline">
      <label class="layui-form-label">用户名</label>
      <div class="layui-input-inline">
        <!-- <input type="text" name="password" lay-verify="required" autocomplete="off" placeholder="请输入密码" class="layui-input" > -->              
     
     ${customer.username}
      </div>
    </div>
  </div>
 <div class="layui-form-item">
   <div class="layui-inline">
      <label class="layui-form-label">密码</label>
      <div class="layui-input-inline">
      <!--   <input type="text" name="password" lay-verify="required" autocomplete="off" placeholder="请输入密码" class="layui-input" >              
       -->
       ${customer.password}
       </div>
    </div>
  </div> 
  <div class="layui-form-item">
   <div class="layui-inline">
      <label class="layui-form-label">姓名</label>
      <div class="layui-input-inline">
      <!--   <input type="text" name="password" lay-verify="required" autocomplete="off" placeholder="请输入密码" class="layui-input" >              
      --> 
      
      ${customer.name}</div>
    </div>
  </div>
 <div class="layui-form-item">
   <div class="layui-inline">
      <label class="layui-form-label">电话</label>
      <div class="layui-input-inline">
      <!--   <input type="text" name="password" lay-verify="required" autocomplete="off" placeholder="请输入密码" class="layui-input" >              
       -->
       ${customer.num}
       </div>
    </div>
  </div> 
 <div class="layui-form-item">
   <div class="layui-inline">
      <label class="layui-form-label">地址</label>
      <div class="layui-input-inline">
      <!--   <input type="text" name="password" lay-verify="required" autocomplete="off" placeholder="请输入密码" class="layui-input" >              
       -->
       ${customer.address}
       </div>
    </div>
  </div> 
  
   
 <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn" lay-submit="" lay-filter="demo1">确定</button>
      <a href="Userchangemessage.jsp">编辑</a>
    </div>
  </div>
</form> 
<script src="layui/layui.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
    layui.use('laydate', function(){
        var laydate = layui.laydate;
        //执行一个laydate实例
        var day = laydate.render({
            elem: '#day'
            ,format: 'yyyy/MM/dd'
            ,min: 0
        });
    });

</script>

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
</body>
</html>