<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>显示所有公告</title>
<base href="${ctx}">
<script  src="${ctx}/js/jquery.min.js"></script>


</script> 
</head>
<body>
	<table id="tab" border="1">
  		<tr>
  			<th>id</th>
  			<th>文章标题</th>
  			<th>公告内容</th>
  			<th>公告时间</th>
  			<th>作者</th>
  			<!-- <th>功能</th> --> 
  		</tr>
  		 
  		
     	<tr>
  			<td>${article.articleId}</td>
  			<td>${article.title}</td>
  			<td>${article.content}</td>
  			<td>${article.uptime} </td>
  			<td>${article.author}</td>
  		</tr>
     
  	</table>
   
</body>
</html>