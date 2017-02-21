<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>   
    
<c:set var="baseurl" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>bulletin</title>
</head>
<body>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>index</title>
    <link rel="stylesheet" type="text/css" href="../../styles/basic.css"/>
    <script type="application/javascript" src="../../scripts/jquery-3.1.1.js"></script>
</head>
<body>
<jsp:include page="adminheader.jsp"></jsp:include>

        <div id="find">
            <form>
                <table>
                    <tr>
                        <td><input type="text" name="search" id="search"/></td>
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
  			<td>${fn:substring(bulletin.content, 0, 20)}...</td>
  			<td>${bulletin.date} </td> 	 
  			<td><a href="${baseurl}/bulletin/bulletinEdit?id=${bulletin.bulletinId}">修改</a></td>
  			<td>   <a href="${baseurl}/bulletin/deleteBulletin?id=${bulletin.bulletinId}">删除</a> </td>	
  		</tr> 
  		
     </c:forEach>
            </table>
            <div class="pagenav">
                <ul contenteditable="true">
                    <li class="pageLeft">
                        <a href="#">上一页</a></li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li class="pageRight">
                        <a href="#">下一页</a></li>
                </ul>
            </div>
        </div>

        <div class="operation">添加新的公告：
        </div>
        <div class="ft">
            <form method="post" action="${webroot}/sadmin/manage.do?action=add">
                <table>
                    <tr>
                        <td class="lable">公告标题</td>
                        <td><input type="text" name="title" id="title"/></td>
                    </tr>
                    <tr>
                        <td class="lable">公告内容</td>
                        <td><textarea name="message" rows="4" cols="30"></textarea></td>
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
    </div>
    <div class="clearf"></div>
</div>
</body>
</html>
</body>
</html>