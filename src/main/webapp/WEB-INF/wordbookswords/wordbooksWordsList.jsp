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
<form action="${ctx}/wordbooksWordsList" method="post">
<input type="text" name="wbookId">
    <input type="submit" value="Submit">
</form> 
	<table id="tab">
  		<tr>
  			<th>单词id</th>
  			<th>单词名称</th>
  			 <th>单词解释</th>
  			<th>单词词性</th>
  		</tr>
  		 
  		 <c:forEach items="${wordsCustomList}"  var="wordsCustom">
     	<tr>
  			<td>${wordsCustom.wordId}</td>
  			<td>${wordsCustom.wordname}</td>
  			<td>${wordsCustom.explanation}</td>
  			<td>${wordsCustom.properity} </td>
  			<td><a href="${ctx}/wordbooksWordsAddLoad">增加</a>  
  			    <a href="${ctx}/wordbooksWordsDelLoad">删除</a> 
  			</td> 
  		</tr>
     </c:forEach> 
  	</table>    
	
</body>
</html>