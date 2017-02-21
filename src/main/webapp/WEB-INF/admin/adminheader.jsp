<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="baseurl" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link rel="stylesheet" type="text/css" href="styles/basic.css"/>
    <script type="application/javascript" src="dist/jquery-3.1.1.js"></script>
<title>Insert title here</title>
<script>
    //页面子菜单
    var $course = $("#menu a:eq(2)");
    $course.next().hide();
    $course.click(function () {
        if($course.next().is(":hidden")){
            $course.next().show();
        }else{
            $course.next().hide();
        }
    });
    $("#mini a:eq(1)").click(function () {
        $("#course_manage").hide();
        $("#course_add").show();
    });
    //子菜单课程查询显示
    $("#mini a:eq(0)").click(function () {
        $("#course_manage").show();
        $("#course_add").hide();
    });
});

</script>

</head>
<body>
 <div id="content">
    <div id="left">
        <h1>操作菜单</h1>
        <div class="ft" style="border:none;">
            <div id="menu">
                <a href="${baseurl}/fowardIndex">用户信息管理</a>
                <a href="${baseurl}/fowardPlan">学习计划管理</a>
                <a href="#">课程管理</a>
                <div id="mini">
                    <a href="${baseurl}/fowardCourse">课程查询</a>
                    <a href="${baseurl}/fowardCourseAdd">课程添加</a>
                </div>
                <a href="${baseurl}/fowardBulletin">公告管理</a>
                <a href="${baseurl}/adminlogout.action">退出系统</a>
            </div>
        </div>
    </div> 
    <div id="right">
        <h1>用户信息管理</h1>
        <div id="hmenu">
            <ul>
                <li><a href="${baseurl}/adminlogout.action">退出系统</a></li>
                <li>管理员：${sessionScope.sessionUser.username }</li>
            </ul>
        </div>
</body>
</html>