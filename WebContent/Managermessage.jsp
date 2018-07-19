<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <%@ page import="petsshop.Manager" %>
 <%@ page import ="javax.servlet.http.HttpSession "%>
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
  <title>个人资料</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="layui/css/layui.css"  media="all">
  <!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
</head>
<body>
<% 
Manager manager=new Manager();
Connection conn = null;
PreparedStatement stmt=null;
ResultSet rs = null;
int id=1;
String sql = "select* from manager where id=? ;";
try{
	
   conn = DBUtils.getConnection();
   stmt = conn.prepareStatement(sql);
   stmt.setInt(1, id);
	String username = null;
	String password = null;			
	rs =stmt.executeQuery();
	while(rs.next()){
	 	  
	   username = rs.getString(1);
	   password=rs.getString(2);
	  
	   manager.setUsername(username);
	   manager.setPassword(password);
	  }
		stmt.close();
	    conn.close();		
	    HttpSession session222 = request.getSession(true);
		session222.setAttribute("manager",manager);
			 }catch(SQLException e){
			 e.printStackTrace() ;
}							
 %>
<form class="layui-form"  id="chooseForm" action=Login method="post">
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
  <legend>个人资料</legend>
</fieldset>
  <div class="layui-form-item">
   <div class="layui-inline">
      <label class="layui-form-label">账号</label>
      
       <div class="layui-input-inline">
        <!-- <input type="text" name="password" lay-verify="required" autocomplete="off" placeholder="请输入密码" class="layui-input" > -->
       <label class="layui-form-label">1</label> 
      </div>
    </div>
  </div>
  <div class="layui-form-item">
   <div class="layui-inline">
      <label class="layui-form-label">密码</label>
     <div class="layui-input-inline">
      
      <label class="layui-form-label">${manager.password}</label> 
      </div>
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