<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>显示信息</title>
<base href="${ctx}">
<script  src="${ctx}/js/jquery.min.js"></script>

<!--  下面JS为页面初始化异步加载数据，
如果采用easyui ,那么返回的data数据就可以直接绑定到表格上，
下面才的的拼接方式上无任何框架的方式 --> 
<!--  <script type="text/javascript">
$(function(){
	$.ajax({
		type: "GET",
        url: "${ctx}/user/list",
        success: function(data){
        	var body ="";
        	var td = "<td><a href='${ctx}/user/addLoad'>增加</a> <a href='${ctx}/user/editLoad?id=${user.id}'>修改</a>   <a href='${ctx}/user/delete?id=${user.id}'>删除</a> </td>"
        	for(var i=0;i< data.length;i++)
        	{
        		body  = body + "<tr>"; 
        		for(var key in data[i]){ 
        		
        			body  = body   + "<td>"+data[i][key]+"</td>" ; 
        			
        		}
        		body  =    body + td + "</tr>";   
        	}
        	$("#tab tbody").append(body); 
        }
	});
});
 -->
</script> 
</head>
<body>
<form action="${ctx}/selectuser" method="post">
 <input type="text" name="username"/>
 	<input type="submit" value="搜索"> 
</form>
	<table id="tab">
  		<tr>
  			<th>id</th>
  			<th>用户名</th>
  			 <th>密码</th>
  			<th>电话</th>
  			<th>邮箱</th>
  		   <th>角色</th>
  			<th>功能</th> 
  		</tr>
  		 
  		 <c:forEach items="${userList}"  var="user">
     	<tr>
  			<td>${user.id}</td>
  			<td>${user.username}</td>
  			<td>${user.password}</td>
  			<td>${user.phone} </td>
  			<td>${user.email}</td>
  			<td>${user.roleId}</td>
  			<td><a href="${ctx}/addLoad">增加</a> <a href="${ctx}/editLoad?id=${user.id}">修改</a>   <a href="${ctx}/delete?id=${user.id}">删除</a> </td>
  		</tr>
     </c:forEach> 
  	</table>
    
	
</body>
</html>