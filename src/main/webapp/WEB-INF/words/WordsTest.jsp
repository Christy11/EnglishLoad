<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- <table id="tab">
  		<tr>
  			<th>id</th>
  			<th>用户名</th>
  			<th>用户名</th>
  			<th>用户名</th>
  			<th>用户名</th>
  		</tr>
  		 
  		<c:forEach items="${userList}"  var="user">
     	<tr>
  			<td>${user.id}</td>
  			<td>${user.username}</td>
  			<td>${user.password}</td>
  			<td>${user.email}</td>
  			<td><a href="${ctx}/user/addLoad">增加</a> <a href="${ctx}/user/editLoad?id=${user.id}">修改</a>   <a href="${ctx}/user/delete?id=${user.id}">删除</a> </td>
  		</tr>
     </c:forEach> 
     <tr>
  			<td>${wordsCustom.wordId}</td>
  			<td>${wordsCustom.wordname}</td>
  			<td>${wordsCustom.explanation}</td>
  			<td>${wordsCustom.audio}</td>
  			<td>${wordsCustom.properity}</td>
  			<td><a href="${ctx}/user/addLoad">增加</a> <a href="${ctx}/user/editLoad?id=${user.id}">修改</a>   <a href="${ctx}/user/delete?id=${user.id}">删除</a> </td>
  	</tr>
  	</table> --%>
  <%-- 	<table id="tab1" border="1">
  		<tr>
  			<th>id</th>
  			<th>用户名</th>
  		</tr>
  		 
  		<c:forEach items="${wordsCustomList}"  var="wordsCustom">
     	<tr>
  			<td>${wordsCustom.wordId}</td>
  			<td>${wordsCustom.wordname}</td>
  		</tr>
       </c:forEach>
  	</table> --%>
  	<table id="tab1">
		  		<tr>
		  			<th>单词</th>
		  			<th>音标</th>
		  			<th>释义</th>
		  			<th>例句</th>
		  		</tr>
		     	<tr>
		  			<td>${wordsCustom.wordname}</td>
		  			<td>${wordsCustom.properity}</td>
		  			<td>${wordsCustom.explanation}</td>
		  			<td>${wordsCustom.example}</td>
		  		</tr>
		  	</table>
</body>
</html>