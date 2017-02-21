<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="baseurl" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人中心</title>
  <!-- 新 Bootstrap 核心 CSS 文件 -->
  <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<!-- 可选的Bootstrap主题文件（一般不使用） -->
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap-theme.min.css"></script>
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<div class="page-header">
				<h1>
					<small><span><strong>欢迎${sessionScope.sessionUser.username }来到个人中心</strong></span></small>
				</h1>
			</div>
			<div class="tabbable tabs-left" id="tabs-917286">
				<ul class="nav nav-tabs">
					<li>
						<a data-toggle="tab" href="#panel-512364">我的生词本</a>
					</li>
					<li>
						<a class="active" data-toggle="tab" href="#panel-77222">我的课程</a>
					</li>
					<li class="active">
						<a class="active" data-toggle="tab" href="#panel-77221">个人设置</a>
					</li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane" id="panel-512364">
						 
	                   <form action="${baseurl}/wordbooksList" method="post"> 
						<table id="tab">
				  		<tr>
				  			<th>生词本id</th>
				  			<th>生词本名称</th>
				  			 <th>描述</th>
				  			<th>创建日期</th>
				  		</tr>
				  		 
				  		 <c:forEach items="${wordbooksCustomList}"  var="wordbooksCustom">
				     	<tr>
				  			<td>${wordbooksCustom.wbookId}</td>
				  			<td>${wordbooksCustom.wname}</td>
				  			<td>${wordbooksCustom.wexpress}</td>
				  			<td>${wordbooksCustom.wdate} </td>
				  			<td><a href="${baseurl}/wordbooksAddLoad">增加</a> 
				  			    <a href="${baseurl}/wordbooksEditLoad?wbookId=${wordbooksCustom.wbookId}">修改</a>   
				  			    <a href="${baseurl}/wordbooksDelById?wbookId=${wordbooksCustom.wbookId}">删除</a> 
				  			</td>
				  		</tr>
				     </c:forEach> 
				  	</table> 
				  	</form>
					</div>
					<div class="tab-pane" id="panel-77222">
						<p>
							第二周部分
						</p>
					</div>
					<div class="tab-pane active" id="panel-77221">
					<div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<div class="accordion" id="accordion-346126">
				<div class="accordion-group">
					<div class="accordion-heading">
						 <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion-346126" href="#accordion-element-260998">个人资料</a>
					</div>
					<div id="accordion-element-260998" class="accordion-body collapse">
						<div class="accordion-inner">
							<div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			
			
			 <form action="${baseurl}/edit"  method="post">
  	<input  style="display:none" type="text" name="id" value="${user.id}" />
  	 <legend>个人资料</legend> 
  	<table>
  	
  		<tr> 
  			<th><legend>用户名:</legend> </th>
  			<td><legend><input type="text" name="username" value="${user.username}" /></legend></td>
  		</tr>
  		<tr>
  			 
  			<th>密码</th>
  			<td><input type="text" name="password" value="${user.password}" /></td>
  		</tr>
  		<tr>
  			 
  			<th>电话</th>
  			<td><input type="text" name="phone" value="${user.phone}" /></td>
  		</tr>
  		<tr>
  			 
  			<th>邮箱</th>
  			<td><input type="text" name="email" value="${user.email}" /></td>
  		</tr>
  		<tr>
  			 
  			<th>加密盐</th>
  			<td><input type="text" name="salt" value="${user.salt}" /></td>
  		</tr>
  		<tr>
  			 
  			<th>角色</th>
  			<td><input type="text" name="roleId" value="${user.roleId}" /></td>
  		</tr>
  		<tr>
  			<td colspan="2"><input type="submit" value="修改"> </td>
  		</tr>
  	</table>
  	</form> 
	
		</div>
	</div>
</div>
						</div>
					</div>
				</div>
				<div class="accordion-group">
					<div class="accordion-heading">
						 <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-346126" href="#accordion-element-756083">密码修改</a>
					</div>
					<div id="accordion-element-756083" class="accordion-body collapse">
						<div class="accordion-inner">
							功能块...
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>	
						
					</div>
				</div>
			</div>
			<p class="tabs-left">
			</p>
		</div>
	</div>
	<div class="row-fluid">
		<div class="span12">
		</div>
	</div>
</div>
</body>
</html>