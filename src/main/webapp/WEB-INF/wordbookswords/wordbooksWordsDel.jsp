<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改信息</title>
<base href="${ctx}">
</head>
<body>
    <form action="${ctx}/wordbooksWordsDel"  method="post">
  	<table>
  		<tr> 
  			<th>单词本id</th>
  			<td><input type="text" name="wbookId" value="" /></td>
  		</tr>
  		<tr>
  			 
  			<th>单词id</th>
  			<td><input type="text" name="wordId" value="" /></td>
  		</tr>
  		<tr>
  			<td colspan="2"><input type="submit" value="删除"> </td>
  		</tr>
  	</table>
  	</form> 
	
</body>
</html>