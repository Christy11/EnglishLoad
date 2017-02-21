<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>  
       <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
        <%@ page import="java.util.*"%>  
<c:set var="baseurl" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>index</title>
    <link rel="stylesheet" type="text/css" href="styles/basic.css"/>
    <script type="application/javascript" src="scripts/jquery-3.1.1.js"></script>
    <style type="text/css">
        .white_content { 
           display: none;  
            position: absolute; 
            top: 25%; 
            left: 25%; 
            width: 30%; 
            height: 30%; 
            padding: 20px; 
            border: 10px solid #008080; 
            background-color: white; 
            z-index:1002; 
            overflow: auto; 
        } 
    </style>
</head>
<body>
<jsp:include page="adminheader.jsp"></jsp:include>
        <div id="find">
            <form method="post" action="${baseurl}/fowardParBulletin">
                <table>
                    <tr>
                        <td><input type="text" name="title" id="title"/></td>
                        <td><input type="submit" value="查询" class="button"/></td>
                    </tr>
                </table>
            </form>
        </div>
        <div class="operation">公告管理：
        </div>
        <div>
            <table class="dt" border="0" cellspacing="1">
                <tr>
                    <th>序号</th>
                    <th>公告标题</th>
                    <th>查看内容</th>
                    <th>公告时间</th>
                    <th>修改</th>
                    <th>删除用户</th>
                </tr>
            <c:forEach items="${bulletinList}" var="bulletin" varStatus="status">
     	 <tr>
  			<td>${bulletin.bulletinId}</td>
  			<td>${bulletin.title}</td>
  			<td>${fn:substring(bulletin.content, 0, 20)}<a href="${baseurl}/bulletin/showBulletin?id=${bulletin.bulletinId}">...</a></td>
  			<td><fmt:formatDate value="${bulletin.date}" pattern="yyyy-MM-dd HH:mm:ss"/></td>	 
  			<td><a href = "JavaScript:void(0)" onclick = "document.getElementById('light${bulletin.bulletinId}').style.display='block';document.getElementById('fade').style.display='block'">修改</a></td>
  			
  			<td>   <a href="${baseurl}/bulletin/deleteBulletin?id=${bulletin.bulletinId}">删除</a> </td>	
  		<td>
  		
  		<div class="white_content" id="light${bulletin.bulletinId}">更新公告：
    
        <div class="ft">
            <form method="post" action="${baseurl}/bulletin/updateBulletin">
                	<input type="hidden" name="id" value="${bulletin.bulletinId}" />
                <table>
                    <tr>
                        <td class="lable">公告标题</td>
                        <td><input  type="text" name="title" value="${bulletin.title}"/></td>
                    </tr>
                    <tr>
                        <td class="lable">公告内容</td>
                        <td><textarea name="content" value="${bulletin.content}"  rows="4" cols="30"></textarea></td>
                    </tr>
                    <tr>
                         <td colspan="3">
                            <input type="submit" value="确认添加" class="button"/>
                            <input type="reset"  value="重置" class="button" id="reset"/>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
   
    <div class="clearf"></div>

  		</div></td></tr> 
     </c:forEach>
      </table>      
            <div class="pagenav">
                <ul >
                    <li class="pageLeft">
                      <a href="${baseurl}/fowardBulletin?page=${page.prePage}">上一页</a></li>
                    <li><a href="${baseurl}/fowardBulletin?page=${1}">1</a></li>
                    <li><a href="${baseurl}/fowardBulletin?page=${2}">2</a></li>
                    <li><a href="${baseurl}/fowardBulletin?page=${3}">3</a></li>
                    <li><a href="${baseurl}/fowardBulletin?page=${4}">4</a></li>
                    <li><a href="${baseurl}/fowardBulletin?page=${5}">5</a></li>
                    <li class="pageRight">
                        <a href="${baseurl}/fowardBulletin?page=${page.nextPage}">下一页</a></li>
              </ul> 
            </div>
        </div>

        <div class="operation">添加新的公告：
        </div>
        <div class="ft">
            <form method="post" action="${baseurl}/bulletin/addBulletin">
                <table>
                    <tr>
                        <td class="lable">公告标题</td>
                        <td><input type="text" name="title" id="title"/></td>
                    </tr>
                    <tr>
                        <td class="lable">公告内容</td>
                        <td><textarea name="content" rows="4" cols="30"></textarea></td>
                    </tr>
                    <tr>
                         <td colspan="3">
                            <input type="submit" value="确认添加" class="button"/>
                            <input type="reset"  value="重置" class="button" id="reset"/>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
   
    <div class="clearf"></div>
 

</body>
</html>
