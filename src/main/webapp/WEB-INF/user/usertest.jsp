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
  <tr>
<th><a href="${ctx}/showuser?page=${page.firstPage}">首页</a>${page.firstPage}</th>
<th><a href="${ctx}/showuser?page=${paget.prePage}">上一页</a>${page.prePage}</th>
<th><a href="${ctx}/showuser?page=${page.nextPage}">下一页</a>${page.nextPage}</th>
 <th><a href="${ctx}/showuser?page=${page.lastPage}">尾页</a>${page.lastPage}</th> 
 <%-- <th>当前${page.pageNum}/${page.totalPage}页</th> --%>
<th>总条数:${page.total}</th> 
</tr>
</table>
 
  	</table>
    
	<a href=" ${page.nextPage}">下一页</a>  
          ${page.nextPage}
               ${page.nextPage}
</body>
</html>