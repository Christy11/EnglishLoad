<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改公告</title>
<base href="${ctx}">
</head>
<body>
   <form action="${ctx}/bulletin/updateBulletin"  method="post">
  	<input type="text" name="id" value="${bulletin.bulletinId}" />
  	<table>
  		<tr> 
  			<th>标题</th>
  			<td><input type="text" name="title" value="${bulletin.title}" /></td>
  		</tr>
  		<tr>
  			<th>内容</th>
  			<td><input type="text" name="content" value="${bulletin.content}" /></td>
  		</tr>
  		<tr>
  			<td colspan="2"><input type="submit" value="修改"> </td>
  		</tr>
  		<input type="hidden" name="id" value="${bulletin.bulletinId}">
  	</table>
  	</form> 
	
</body>
</html>