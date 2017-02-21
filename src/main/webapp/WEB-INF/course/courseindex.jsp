<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <c:set var="baseurl" value="${pageContext.request.contextPath}/"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Entries Online</title>
   <link rel="favicon" href="images/favicon.png">
    <link rel="stylesheet" media="screen" href="http://fonts.useso.com/css?family=Open+Sans:300,400,700">
    <link rel="stylesheet" href="dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="dist/css/font-awesome.min.css">
    <link rel="stylesheet" href="dist/css/bootstrap-theme.css" media="screen">
    <link rel="stylesheet" href="dist/css/style.css">
    <link rel='stylesheet' id='camera-css'  href='dist/css/camera.css' type='text/css' media='all'>

    <script src="dist/js/html5shiv.js"></script>
    <script src="dist/js/respond.min.js"></script>

    <script type="text/javascript" src='dist/js/jquery-1.9.1.min.js'></script>
    <script src="dist/js/modernizr-latest.js"></script>
    <script type='text/javascript' src='dist/js/jquery.min.js'></script>
    <script type='text/javascript' src='dist/js/fancybox/jquery.fancybox.pack.js'></script>
    <script type='text/javascript' src='dist/js/jquery.mobile.customized.min.js'></script>
    <script type='text/javascript' src='dist/js/jquery.easing.1.3.js'></script>
    <script type='text/javascript' src='dist/js/camera.min.js'></script>
    <script src="dist/js/bootstrap.min.js"></script>
    <script src="dist/js/custom.js"></script> 
    
    <!-- 新 Bootstrap 核心 CSS 文件 -->
  <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<!-- 可选的Bootstrap主题文件（一般不使用） -->
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap-theme.min.css"></script>
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="../../front/header.jsp" />
<!-- header-->
<!-- header-->
<header>
  <div class="container">
    <div class="row">
      <button type="button" class="navbar-toggle"><span class="icon-bar"></span><span class="icon-bar"></span></button>
      <a class="navbar-brand" href="find_Courses.html"><img src="images/searchCourse.png"></a>
      <form id="searchForm" method="POST" action="${baseurl}selectParCourse">
        <div class="form-group has-feedback has-feedback-left">
          <ul class="navbar-nav">
            <li><i class="form-control-feedback"></i><input name="coursename" type="text" class="form-controlinput">
            </li>
            <li><button type="submit" class="btn btn-success">搜索</button>
            </li>
          </ul>
        </div>
      </form>
    </div>
  </div>
</header>
<!-- /.header -->

<!-- searchNav -->
<section class="newsBox" style="margin-top: 50px;">
  <div class="container well">
    <div class="row" style="margin: 0 5px;">
      <div class="clearfix">
        <p style="font-size: 16px;margin-top:10px;" class="pull-left" display='inline-block'>课程分类：</p>
          <ul class="nav navbar-nav">
         <li rel="0"><a href="${baseurl}findCourse" class="btn">全部</a></li>
         <li rel="1"><a href="${baseurl}selectByCourseCategory?categoryname=${'口语'}">口语</a></li>
          <li rel="2"><a href="${baseurl}selectByCourseCategory?categoryname=${'听力'}">听力</a></li>
          <li rel="3"><a href="${baseurl}selectByCourseCategory?categoryname=${'单词'}">单词</a></li>
          <li rel="4"><a href="${baseurl}selectByCourseCategory?categoryname=${'写作'}">写作</a></li>
          <li rel="5"><a href="${baseurl}selectByCourseCategory?categoryname=${'语法'}">语法</a></li>
          <li rel="6"><a href="${baseurl}selectByCourseCategory?categoryname=${'其他'}">其他</a></li>
         
        </ul>
      </div>
    </div>

        <p style="font-size: 16px;margin-top:10px;" class="pull-left" display='inline-block'>学习目标：</p>
        <ul class="nav navbar-nav">
          <li rel="0"><a href="${baseurl}findCourse" class="btn">全部</a></li>
           
         <li rel="1"><a href="${baseurl}selectByCourseGrade?categoryname=${categoryname}&gradename=${'四级'}">四级</a></li>
          <li rel="2"><a href="${baseurl}selectByCourseGrade?categoryname=${categoryname}&gradename=${'六级'}">六级</a></li>
          <li rel="3"><a href="${baseurl}selectByCourseGrade?categoryname=${categoryname}&gradename=${'雅思'}">雅思</a></li>
          <li rel="4"><a href="${baseurl}selectByCourseGrade?categoryname=${categoryname}&gradename=${'托福'}">托福</a></li>
          <li rel="5"><a href="${baseurl}selectByCourseGrade?categoryname=${categoryname}&gradename=${'GRE'}">GRE</a></li>  
          <li rel="6"><a href="${baseurl}selectByCourseGrade?categoryname=${categoryname}&gradename=${'其他'}">其他</a></li>   
      
        </ul>
      </div>
    </div>    
  </div>
</section>
<!-- /.searchNav -->
  <!-- searchCourse -->
  <div data-bind=" " >
    <div class="container well">
      <div class="navbar-nav tool-bar">
        <a class="btn-inline active" style="margin: 0 5px;" href="${baseurl}/findCourse">综合</a>
        <a class="btn-inline"style="margin: 0 5px;" href="${baseurl}selectByCourseClickRate">人气</a>

      </div>

      	 <c:forEach items="${courseList}"  var="course">
      <hr style="height: 1px; border:none;border-top:1px solid #eee; "/>
      <div class="row"><a href="${baseurl}courseplay/${course.courseId}">
        <div class="newsBox">
          <img src="/pic/${course.coursepic}" style="float: left;">
          <div style = "margin-left: 15px; margin-top: 20px;">
            <p class="title" style="margin-left: 15px;">
          <h5>课程名：${course.coursename}</h5>
            </p>
            <p class="title" style="margin-left: 15px;">
            <h5>任课老师：${course.teacher} </h5>
            </p>
            <p class="title" style="margin-left: 15px;">
            <h5>访问量：${course.clickrate} </h5>
            </p>
            <p>课程简介：${course.courseintro}</p>
          </div>
        </div></a>
      </div>
      
 </c:forEach>
 
 
 
   <div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<div class="pagination">
				<ul>
					<li>
					<a href="${baseurl}/findCourse?page=${page.firstPage}">首页</a>${page.firstPage}
					</li>
					<li>
						<a href="${baseurl}/findCourse?page=${page.prePage}">上一页</a>${page.prePage}
					</li>
					<li>
						<a href="${baseurl}/findCourse?page=${page.nextPage}">下一页</a>${page.nextPage}
					</li>
					<li>
						 <a href="${baseurl}/findCourse?page=${page.lastPage}">尾页</a>${page.lastPage}
					</li>
					
				</ul>
			</div>
		</div>
	</div>
</div>
   

<section class="container">
  <div class="row">
    <div class="col-md-8">
      <div class="title-box clearfix ">
        <h2 class="title-box_primary">公告</h2>
      </div>
       <c:forEach items="${bulletinList}"  var="bulletin" varStatus="status">
       <c:if test="${status.count<4}">
      <p><a class="btn-inline" href="${baseurl}/bulletin/showBulletin?id=${bulletin.bulletinId}">${bulletin.title}</a></p>
      </c:if>
      </c:forEach>
       <a href="${baseurl}/bulletin/showAllBulletin" >.......</a></br>
      <a href="${baseurl}/bulletin/showAllBulletin" title="read more" class="btn-inline " target="_self">更多</a> </div>
    <div class="col-md-4">
      <div class="title-box clearfix ">
        <h2 class="title-box_primary">友情链接</h2>
      </div>
      <div class="list styled custom-list">
        <ul>
          <li><a title="BBC Learning English" href="http://www.bbc.co.uk/learningenglish/"> Learing English from British Broadcasting Corporation - BBC Learning English</a></li>
          <li><a title="TED:Idea worth spreading" href="http://www.ted.com/"> Lecture about Technology, Entertainment, Design - Idea worth spreading</a></li>
          <li><a title="ESL Pod" href="http://www.eslpod.com/"> English as a Second English Podcast - a marverlous way to train listening</a></li>
        </ul>
      </div>
    </div>
  </div>
</section>
<footer id="footer">
  <div class="container" style="margin-bottom: 10px">
<h4>联系我们</h4>
<div class="contact-info">
  您可以通过以下方式联系我们 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <i class="fa fa-map-marker"></i> 湖北省 武汉市 洪山区 珞瑜东路 华中科技大学 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <i class="fa fa-phone"></i> +86 123 4567 8901 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <i class="fa fa-envelope-o"></i> youremail@email.com
</div>
</div>
<div class="footer2">
  <div class="container">
    <div class="row">
      <div class="col-md-6 panel">
        <div class="panel-body">
          <p class="simplenav"> <a href="../../index.html">首页</a> | <a href="../jsp/front/about.html">关于</a> | <a href="../jsp/front/courses.html">课程</a>            | <a href="../jsp/front/words.html">单词</a> | <a href="../jsp/front/listening.html">听力</a> | <a href="../jsp/front/contact.html">联系我们</a>            </p>
        </div>
      </div>
      <div class="col-md-6 panel">
        <div class="panel-body">
          <p class="text-right"> Copyright &copy; 2016.Company name All rights reserved.
          </p>
        </div>
      </div>
    </div>
    <!-- /row of panels -->
  </div>
</div>
</footer>
<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
<script type="text/javascript" src='../../dist/js/jquery-1.9.1.min.js'></script>
<script type='text/javascript' src='../../dist/js/jquery.min.js'></script>
<script src="../../dist/js/bootstrap.min.js"></script>

</body>

</html>