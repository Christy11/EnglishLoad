<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="baseurl" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>course</title>
    <link rel="stylesheet" type="text/css" href="../../styles/basic.css"/>
    <script type="application/javascript" src="../../scripts/jquery-3.1.1.js"></script>
</head>
<body>
<jsp:include page="adminheader.jsp"></jsp:include>

        <div id="find">
            <form id="searchForm" method="POST" action="${baseurl}/selectParAdminCourse">
                <table>
                    <tr>
                        <td> <input name="coursename" type="text" id="search" ></td>
                        <td><input type="submit" value="查询" class="button"/></td>
                    </tr>
                </table>
            </form>
        </div>
        <div class="operation">课程管理：
        </div>
        <div>
            <table class="dt" border="0" cellspacing="1">
                <tr>
                    <th>序号</th>
                    <th>课程名字</th>
                    <th>课程类别</th>
                  <!--   <th>课程等级</th> -->
                   <!--  <th>课程时长</th> -->
                    <th>课程老师</th>
                    <th>点击率</th>
                     <th>课程图片</th>
                      <th>课程内容</th>
                    <th>修改</th>
                    <th>删除</th>
                </tr>
            <c:forEach items="${courseList}"  var="course">
     	<tr>
  			<td>${course.courseId}</td>
  			<td>${course.coursename}</td>
  			<td>${course.categoryId}</td>
  			<td>${course.teacher} </td>
  			<td>${course.clickrate}</td>
  			<td>${course.coursepic}</td>
  			<td>${course.coursecontent}</td>
  			
  			<td><a href="${baseurl}/editLoad?id=${course.courseId}">修改</a></td>
  			<td>   <a href="${baseurl}/delete?id=${course.courseId}">删除</a> </td>
  		</tr>
     </c:forEach> 
            </table>
            <div class="pagenav">
                <ul >
                    <li class="pageLeft">
                      <a href="${baseurl}/fowardCourse?page=${page.prePage}">上一页</a></li>
                    <li><a href="${baseurl}/fowardCourse?page=${1}">1</a></li>
                    <li><a href="${baseurl}/fowardCourse?page=${2}">2</a></li>
                    <li><a href="${baseurl}/fowardCourse?page=${3}">3</a></li>
                    <li><a href="${baseurl}/fowardCourse?page=${4}">4</a></li>
                    <li><a href="${baseurl}/fowardCourse?page=${5}">5</a></li>
                    <li class="pageRight">
                        <a href="${baseurl}/fowardCourse?page=${page.nextPage}">下一页</a></li>
              </ul> 
            </div>
        </div>
    </div>
    <div class="clearf"></div>
</div>
<script type="application/javascript">
    document.write("<script src='jquery-3.1.1.js'><\/script>");
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