<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
  <link rel="stylesheet" href="layui/css/layui.css">
</head>
<script src="layui/layui.js" charset="utf-8"></script>
<body>
<form class="layui-form" action=Addsort method="post" >
  <div class="layui-form-item">
    <label class="layui-form-label">新类别</label>
    <div class="layui-input-block">
      <input type="text" name="sort" required  lay-verify="required" placeholder="请输入新类别" autocomplete="off" class="layui-input">
    </div>
  </div>

  <div class="layui-form-item">
    <div class="layui-input-block">
    <button class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>
     <!--  <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button> -->
      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
    </div>
  </div>
</form>
</body>
</html>