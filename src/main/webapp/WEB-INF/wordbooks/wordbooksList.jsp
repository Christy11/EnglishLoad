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
</head>
<body>
<%-- <form action="${ctx}/wordbooksList" method="post">
<input type="text" name="userId">
    <input type="submit" value="Submit">
</form>  --%>
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
  			<td><a href="${ctx}/wordbooksAddLoad">增加</a> 
  			    <a href="${ctx}/wordbooksEditLoad?wbookId=${wordbooksCustom.wbookId}">修改</a>   
  			    <a href="${ctx}/wordbooksDelById?wbookId=${wordbooksCustom.wbookId}">删除</a> 
  			</td>
  		</tr>
     </c:forEach> 
  	</table> 
    
	
</body>
</html>