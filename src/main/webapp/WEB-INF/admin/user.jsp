<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="baseurl" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<head>
    <meta charset="UTF-8">
    <title>index</title>
    <link rel="stylesheet" type="text/css" href="styles/basic.css"/>
    <script type="application/javascript" src="dist/jquery-3.1.1.js"></script>
</head>

<body>
<jsp:include page="adminheader.jsp"></jsp:include>
        <div id="find">
            <form action="${baseurl}/selectuser" method="post">
                <table>
                    <tr>
                        <td><input type="text" name="username" id="search"/></td>
                        <td><input type="submit" value="查询" class="button"/></td>
                    </tr>
                </table>
            </form>
        </div>
        <div class="operation">用户信息管理：
        </div>
        <div>
            <table class="dt" border="0" cellspacing="1">
                <tr>
                    <th>序号</th>
                    <th>用户名</th>
                    <th>密码</th>
                    <th>电话</th>
                    <th>邮箱</th>
                    <th>角色</th>
                    <th>修改</th>
                    <th>删除用户</th>
                </tr>
        <c:forEach items="${userList}"  var="user">
     	<tr>
  			<td>${user.id}</td>
  			<td>${user.username}</td>
  			<td>${user.password}</td>
  			<td>${user.phone} </td>
  			<td>${user.email}</td>
  			<td>${user.roleId}</td>
  			<td><a href="${baseurl}/editLoad?id=${user.id}">修改</a></td>
  			<td>   <a href="${baseurl}/delete?id=${user.id}">删除</a> </td>
  		</tr>
     </c:forEach> 
              
            </table>
            
            
            <div class="pagenav">
             <ul >
                    <li class="pageLeft">
                      <a href="${baseurl}/fowardIndex?page=${page.prePage}">上一页</a></li>
                    <li><a href="${baseurl}/fowardIndex?page=${1}">1</a></li>
                    <li><a href="${baseurl}/fowardIndex?page=${2}">2</a></li>
                    <li><a href="${baseurl}/fowardIndex?page=${3}">3</a></li>
                    <li><a href="${baseurl}/fowardIndex?page=${4}">4</a></li>
                    <li><a href="${baseurl}/fowardIndex?page=${5}">5</a></li>
                    <li class="pageRight">
                        <a href="${baseurl}/fowardIndex?page=${page.nextPage}">下一页</a></li>
              </ul> 
            </div>
        </div>

        <div class="operation">添加新的用户：
        </div>
        <div class="ft">
            <form method="post" action="${baseurl}/add">
                <table>
                    <tr>
                        <td class="lable">用户名</td>
                        <td><input type="text" name="username" id="username"/></td>
                        <td class="hint">*用户名为英文字母、下划线或数字组合,长度为6-20位</td>
                    </tr>
                    <tr>
                        <td class="lable">初始密码</td>
                        <td><input type="text" name="password" id="password"/></td>
                        <td class="hint">*初始密码为英文字母、下划线或数字组合，长度为6-20位</td>
                    </tr>
                    <tr>
                        <td class="lable">电话</td>
                        <td><input type="text" name="phone" id="phone"/></td>
                    </tr>
                    <tr>
                        <td class="lable">邮箱</td>
                        <td><input type="text" name="email" id="email"/></td>
                    </tr>
                    <tr>
                        <td class="lable">角色</td>
                        <td><select name="roleId" class="box">
                            <option value="3">管理员</option>
                            <option value="2">老师</option>
                            <option value="1">学生</option>
                        </select></td>
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
<script>
    var $course = $("#menu a:eq(2)");
    $course.next().hide();
    $course.click(function () {
        if($course.next().is(":hidden")){
            $course.next().show();
        }else{
            $course.next().hide();
        }
    });
</script>
</body>
</html>