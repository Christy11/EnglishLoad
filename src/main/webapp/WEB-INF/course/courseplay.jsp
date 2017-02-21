<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
  <%@ page import="java.util.*"%>  
<%@ page import="java.text.*"%>  
<c:set var="baseurl" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人中心</title>
  <!-- 新 Bootstrap 核心 CSS 文件 -->
  <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<!-- 可选的Bootstrap主题文件（一般不使用） -->
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap-theme.min.css"></script>
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <link rel="favicon" href="images/favicon.png">
    <link rel="stylesheet" media="screen" href="http://fonts.useso.com/css?family=Open+Sans:300,400,700">
    <link rel="stylesheet" href="${baseurl}/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="${baseurl}/dist/css/font-awesome.min.css">
    <link rel="stylesheet" href="${baseurl}/dist/css/bootstrap-theme.css" media="screen">
    <link rel="stylesheet" href="${baseurl}/dist/css/style.css">
    <link rel='stylesheet' id='camera-css'  href='${baseurl}/dist/css/camera.css' type='text/css' media='all'>

    <script type="text/javascript" src='${baseurl}/dist/js/jquery-1.9.1.min.js'></script>
    <script src="${baseurl}/dist/js/modernizr-latest.js"></script>
    <script type='text/javascript' src='${baseurl}/dist/js/jquery.min.js'></script>
    <script type='text/javascript' src='${baseurl}/dist/js/fancybox/jquery.fancybox.pack.js'></script>
    <script type='text/javascript' src='${baseurl}/dist/js/jquery.mobile.customized.min.js'></script>
    <script type='text/javascript' src='${baseurl}/dist/js/jquery.easing.1.3.js'></script>
    <script type='text/javascript' src='${baseurl}/dist/js/camera.min.js'></script>
    <script src="${baseurl}/dist/js/bootstrap.min.js"></script>
    <script src="${baseurl}/dist/js/custom.js"></script>
    <link href="${baseurl}/styles/video-js.min.css" rel="stylesheet">
   <script src="${baseurl}/js/video.min.js"></script>
     <link rel="stylesheet" href="${baseurl}/dist/css/font-awesome.min.css">
    <link rel="stylesheet" href="${baseurl}/dist/css/style.css">
    <script>
    videojs.options.flash.swf = "video-js.swf";
    </script>
   <script type="text/javascript">
    var myPlayer = videojs('example_video_1');
    videojs("example_video_1").ready(function(){
        var myPlayer = this;
        myPlayer.play();
    });
</script>
<style type="text/css">
        div {
            display: block;
        }
        .couinfo{
            color: white;
            font-size: 14px;
            height: 79px;
            line-height: 79px;
        }
        span strong{
            font-size: 18px;
        }

        .goback{
            color: white;
            width: 79px;
            height: 79px;
            line-height: 79px;
        }
        a.goback:hover {
            color: white;
            background-color: #5e5e5e !important;
        }
        a span {
            padding-top: 15px;
            padding-left: 17px;
        }

        li span {
            padding-right: 35px;
        }
        #header {
            background-color: #14191e;
            width: 100%;
            height: 79px;
        }

        #studyMain {
            background-color: #000;
            height: 480px;
        }

        .media {
            width: 100%;
            height: 480px;
        }
        .media-body {
            height: 480px;
            padding: 30px 250px;
        }

        .tabtable {
            margin: 30px 150px;
        }

        .comment {
            font: bold 16px/2em "Microsoft YaHei UI";
            color: #4d555d;
            padding: 45px;
        }

        a.active {
            color: #3d84e6 !important;
        }

        .commentArea {
            display: block;
            padding: 25px 48px 18px;
            font: 14px/1.4em "Microsoft YaHei UI";
            border-bottom: 1px solid #b7bbbf;
        }

        .personalComm {
            width:100%;
            height:100px;
            border: 1px solid #b7bbbf;
        }

        textarea {
            display: block;
            width: 100%;
            height: 100%;
            padding: 20px;
            line-height:20px;
            font:14px "Microsoft YaHei UI";
        }

        .btn-info {
            padding: 8px 12px;
            background-color: #3d84e6;
        }
        .btn-info:hover {
            background-color: #3772ca;
        }

        .subComm {
            margin: 15px 0px;
        }

    </style>
</head>
<body>
<!-- 顶端显示课程信息 -->
<div id="header">
    <div class="container-fluid">
        <ul class="nav navbar-nav ">
            <li><a class="goback" href="${baseurl}/findCourse"><span class="glyphicon glyphicon-chevron-left"></span></a></li>
            <li><span class="couinfo"><strong>课程名 - ${course.coursename}</strong></span></li>
            <li><span class="couinfo"><em>1-1 英语课程</em></span></li>
        </ul>
    </div>
</div>

<!-- 视频播放处 -->
<div id="studyMain" >
    <div class="container-fluid" style="height: 480px">
        <div class="media" style="height:480px;">
      
                <video id="example_video_1" class="video-js vjs-default-skin vjs-big-play-centered" controls preload="none" width="1300px" height="480px"
                       
                       data-setup="{}">
                    <source src="/video/${course.coursecontent}" type='video/mp4' />
                    <source src="/video/${course.coursecontent}" type='video/webm' />
                    <source src="/video/${course.coursecontent}" type='video/ogg' />
                    <track kind="captions" src="demo.captions.vtt" srclang="en" label="English"></track><!-- Tracks need an ending tag thanks to IE9 -->
                    <track kind="subtitles" src="demo.captions.vtt" srclang="en" label="English"></track><!-- Tracks need an ending tag thanks to IE9 -->
                </video>
          
        </div>
    </div>
</div>

<!-- 课程评论区 -->
<div class="container">
    <div class="tabtable" id="tabs-949977">
        <ul class="nav nav-tabs">
            <li><a href="#" class="disabled"></a></li>
            <li>
                <a href="#panel-487291" data-toggle="tab" class="active comment">评论</a>
            </li>
            <li>
                <a href="#panel-133661" data-toggle="tab" class="comment" >笔记</a>
            </li>
        </ul>
        <div class="tab-content">
            <div class="tab-pane active" id="panel-487291">
                <div class="commentArea">
                    
                     <div class="commBorder">
                        <div class="personalComm">
                            <textarea placeholder="扯淡、吐槽、表扬、鼓励……想说啥就说啥！" id="comment" name="comment"></textarea>
                        
                        </div>
                        <a class="btn btn-info subComm" href="javascript:sendComment();">发表评论</a>
                        <%--将评论的功能与前台的界面融合，由于form表单的提交会刷新所有的页面，这次利用ajax，一种支持异步请求的技术来实现将评论提交，不改变原有的视频页面显示--%>
                        <%--<a class="btn btn-info subComm" href="${baseurl}/comment/commentAdds?comment">发表评论</a>--%>
                    </div> 
                </div>
                <!-- 将所有的评论显示到评论区 -->
             <c:forEach items="${commentList}"  var="comment">
                <div class="commentArea">
                    <div class="extraComm">                 
                        <p style="font-weight: bold; font-size: 16px; font-family: "Microdoft-Yahei", helvetica, arial;">${comment.username}  <fmt:formatDate value="${comment.commentime}" pattern="yyyy-MM-dd HH:mm:ss"/>   </p>
                        <p>${comment.commentext}</p> 
                    </div>
                </div>
                </c:forEach>
           </div>
       <!-- 分页 -->
       <%--  <div class="container-fluid">

              <!-- 分页 -->
        <div class="container-fluid">

	<div class="row-fluid">
		<div class="span12">
			<div class="pagination">
				<ul>
					<li>
					<a href="${baseurl}/comment/commentList?page=${page.firstPage}">首页</a>${page.firstPage}
					</li>
					<li>
						<a href="${baseurl}/comment/commentList?page=${page.prePage}">上一页</a>${page.prePage}
					</li>
					<li>
						<a href="${baseurl}/comment/commentList?page=${page.nextPage}">下一页</a>${page.nextPage}
					</li>
					<li>
						 <a href="${baseurl}/comment/commentList?page=${page.lastPage}">尾页</a>${page.lastPage}
					</li>
					
				</ul>
			</div>
		</div>
	</div>

</div> --%>

</div>
            </div>

          
            <div class="tab-pane" id="panel-133661">
                <div class="commentArea">
                <p>第二部分内容.</p>
                </div>
            </div>
        </div>
    </div>
</div>

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
<script type="text/javascript">

  //sendComment方法
  function sendComment(){
	  var gt_value = document.getElementById('comment').value;
	 //获取courseid的值
	 //获取url链接的值
	 var str=window.location.href;
	 //通过将字符串分隔来获取url最后一个参数的courseid值
	 var arr=str.split("/");
	 document.getElementById('comment').value='';
	  $.ajax({  
          type : "get",  //提交方式  
         url : "${baseurl}/comment/commentAdd?comment="+gt_value+"&courseId="+arr[5],//路径    
          data : {  
        	    
          },//数据，这里使用的是Json格式进行传输  
          success : function(result) {//返回数据根据结果进行相应的处理  
        	  
          }  
      });  
  }
  
</script>

</body>
</html>