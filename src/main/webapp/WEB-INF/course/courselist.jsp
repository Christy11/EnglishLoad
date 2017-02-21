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
<table id="tab">
  		<tr>
  			<th>id</th>
  			<th>用户名</th>
  			 <th>密码</th>
  			<th>电话</th>
  			<th>邮箱</th>
  		   <th>角色</th>
  			<th>功能</th> 
  		</tr>
  		 
  		
     	<tr>
  			<td>${course.courseId}</td>
  			<td>${course.coursename}</td>
  			<td>${course.coursetime}</td>
  			<td>${course.teacher} </td>
  			<img src="/pic/${course.coursepic}" width=100 height=100/>
  			<td>${course.coursepic}</td>
  			<td>${course.coursecontent}</td>
  <video id="example_video_1" class="video-js vjs-default-skin vjs-big-play-centered" controls preload="none" width="640" height="264"
      poster="http://video-js.zencoder.com/oceans-clip.png"
      data-setup="{}">
  <source src="/video/${course.coursecontent}" type='video/mp4' />
   <!--  <source src="/video/oceans.webm" type='video/webm' />
    <source src="/video/oceans.ogv" type='video/ogg' /> -->
    <track kind="captions" src="demo.captions.vtt" srclang="en" label="English"></track><!-- Tracks need an ending tag thanks to IE9 -->
    <track kind="subtitles" src="demo.captions.vtt" srclang="en" label="English"></track><!-- Tracks need an ending tag thanks to IE9 -->
</video>
  	</table>
</body>
</html>