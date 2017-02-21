<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="baseurl" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="${pageContext.request.contextPath }/uploadCourse" method="post">

<input type="text" name="coursename" value="${course.coursename }"/>
<input type="submit" value="提交"/>

</form>
<form action="${pageContext.request.contextPath }/uploadCourse" method="post"  enctype="multipart/form-data" >
<%-- <input type="hidden" name="id" value="${course.courseId}"/> --%>
上传课程信息：<br/>


课程名：<input type="text" name="coursename" value="${course.coursename }"/><br/>
课程老师：<input type="text" name="teacher" value="${course.teacher }"/><br/>
课程点击量<input type="text" name="clickrate" value="${course.clickrate }"/><br/>
课程类别：<input type="text" name="categoryId" value="${course.categoryId }"/><br/>
课程文件：<input type="file"  name="course_video" /> 
课程时长：<input type="text" name="courseduration" value="${course.courseduration }"/><br/>
课程图片：<input type="file"  name="course_pic" /> 
课程介绍：<input type="text" name="courseintro" value="${course.courseintro }"/><br/>

<input type="submit" value="提交"/>

</form> 
</body>
</html>