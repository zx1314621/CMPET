<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix = "c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ page import = "petsshop.Pet" %>
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
  <title>宠物列表</title>
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
function func1() {
    //iframe层
    layer.open({
        type: 2,
        title: '添加分类',
        shadeClose: true,
        shade: 0.8,
        area: ['500px', '400px'],
        content: 'Addsort.jsp' //iframe的url
    });
    
}
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
<!-- <div class="layui-layout layui-layout-admin"> -->
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
            <dd><a href="javascript:func1()">添加分类</a></dd>
            <dd><a href="Addpet.jsp">添加宠物</a></dd>           
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
  <legend>宠物信息</legend>
</fieldset>
     
</form> 
<%
List <Pet> pets = new ArrayList<Pet>();
		 Connection conn = null;
		 PreparedStatement stmt=null;
		 ResultSet rs = null;	
		 String sql = "select * from pet ;";
		 try{
		    conn = DBUtils.getConnection();
		    stmt = conn.prepareStatement(sql);
			rs =stmt.executeQuery();
			int id=0;
			String type = null;
			String sex = null;
			int price=0;
			String name=null;			
			int num=0;
			int age=0;
			while(rs.next()){
				Pet pet=new Pet();
				
			   id = rs.getInt(1);
			   type = rs.getString(2);
			   sex=rs.getString(3);
			   price=rs.getInt(4);
			   name=rs.getString(5);
			   num=rs.getInt(6);
			   age=rs.getInt(7);
			   
			  pet.setId(id);
			  pet.setAge(age);
			  pet.setName(name);
			  pet.setNum(num);
			  pet.setPrice(price);
			  pet.setSex(sex);
			  pet.setType(type);
			  
		      
              pets.add(pet);
				}
				stmt.close();
			    conn.close();	
			    HttpSession session222 = request.getSession(true);
				session222.setAttribute("pets",pets);
					 }catch(SQLException e){
					 e.printStackTrace() ;
	  }								
%>

 <table class="layui-table">
<!--   <colgroup>
    <col width="150">
    <col width="200">
    <col>
  </colgroup> -->
  <thead>
    <tr>
     <th>编号</th>
      <th>种类</th>
      <th>雌雄</th>
      <th>价格</th>
      <th>名字</th>
      <th>数量</th>
      <th>年龄</th>
       <th>操作</th>
    </tr> 
  </thead>
  <tbody>
  <form action =Mpetlistdo method = "post">

<c:forEach var = "pets" items = "${pets}">

<tr>
<td>${pets.id }</td>
    <td>${pets.type }</td>
    <td>${pets.sex }</td>
    <td>${pets.price }</td>
    <td>${pets.name}</td>
    <td>${pets.num }</td>
    <td>${pets.age }</td>

      <td>
     <button class="layui-btn layui-btn-normal" id="find" name="find"  type="submit"  value="${pets.id}"><i class="layui-icon">&#xe615;</i> 查看</button>
    <button class="layui-btn layui-btn-danger" id="delet" name="delete"  type="submit"  value="${pets.id}"><i class="layui-icon">&#xe640;</i> 删除</button>
    <button class="layui-btn layui-btn-warm" id="change" name="change"  type="submit"  value="${pets.id}"><i class="layui-icon">&#xe642;</i> 编辑</button></td>  
</tr>
</c:forEach>
</form>
  </tbody>
</table>   

 

          



          
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
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  </div> 
  <div class="layui-footer">
    <!-- 底部固定区域 -->
   
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