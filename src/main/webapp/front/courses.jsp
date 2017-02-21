<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
               <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <c:set var="baseurl" value="${pageContext.request.contextPath}/"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Entries Online - Courses</title>
	<link rel="favicon" href="../images/favicon.png">
	<link rel="stylesheet" media="screen" href="http://fonts.useso.com/css?family=Open+Sans:300,400,700">
	<link rel="stylesheet" href="../dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="../dist/css/font-awesome.min.css">
	<!-- Custom styles for our template -->
	<link rel="stylesheet" href="../dist/css/bootstrap-theme.css" media="screen">
	<link rel="stylesheet" href="../dist/css/style.css">
	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="../dist/js/html5shiv.js"></script>
	<script src="../dist/js/respond.min.js"></script>
	<![endif]-->
	
	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	<script type="text/javascript" src='../dist/js/jquery-1.9.1.min.js'></script>  
	<script type='text/javascript' src='../dist/js/jquery.min.js'></script>
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<script src="../dist/js/custom.js"></script>
 
</head>

<body>
	<jsp:include page="header.jsp" />
	<header id="head" class="secondary">
        <div class="container">
            <h1>课程学习</h1>
            <a href="${baseurl}findCourse" style="color: red">视频 </a> |直播
        </div>
    </header>

    
    <div class="container">
		<h3>视频学习</h3>
		<p>本网站免费提供英语学习的视频资源，学员可以点击想要学习的课程进行查看。</p><br/>
		<ul class="list-unstyled video-list-thumbs row">
			<li class="col-lg-3 col-sm-4 col-xs-6">
				<a href="#" title="Claudio Bravo, antes su debut con el Barça en la Liga">
					<img src="../images/slides/img1.jpg" alt="Barca" class="img-responsive" height="130px" />
					<h2>陶健 —— 英语学习必知123</h2>
					<span class="play-button"></span>
					<span class="duration">03:15</span>
				</a>
			</li>
			<li class="col-lg-3 col-sm-4 col-xs-6">
				<a href="#" title="Claudio Bravo, antes su debut con el Barça en la Liga">
					<img src="../images/slides/img1.jpg" alt="Barca" class="img-responsive" height="130px" />
					<h2>陶健 —— 英语学习必知123</h2>
					<span class="play-button"></span>
					<span class="duration">03:15</span>
				</a>
			</li>
			<li class="col-lg-3 col-sm-4 col-xs-6">
				<a href="#" title="Claudio Bravo, antes su debut con el Barça en la Liga">
					<img src="../images/slides/img1.jpg" alt="Barca" class="img-responsive" height="130px" />
					<h2>陶健 —— 英语学习必知123</h2>
					<span class="play-button"></span>
					<span class="duration">03:15</span>
				</a>
			</li>
			<li class="col-lg-3 col-md-4 col-sm-4 col-xs-6">
				<a href="#" title="Claudio Bravo, antes su debut con el Barça en la Liga">
					<img src="../images/slides/img1.jpg" alt="Barca" class="img-responsive" height="130px" />
					<h2>陶健 —— 英语学习必知123</h2>
					<span class="play-button"></span>
					<span class="duration">03:15</span>
				</a>
			</li> 
		</ul>
	</div>

	<div id="courses">
		<section class="container">
			<h3>更多课程</h3>
			<div class="row">
				<div class="col-md-4">
					<div class="featured-box"> 
						<div class="text">
							<h3><a href="#" class="btn-inline">英语单词解析</a></h3>
							英语单词解析英语单词解析英语单词解析英语单词解析英语单词解析英语单词解析英语
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="featured-box"> 
						<div class="text">
							<h3><a href="#" class="btn-inline">英语发音详解</a></h3>
							英语发音详解英语发音详解英语发音详解英语发音详解英语发音详解英语发音详解英语
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="featured-box"> 
						<div class="text">
							<h3><a href="#" class="btn-inline">中小学英语学习技巧</a></h3>
							中小学英语学习技巧中小学英语学习技巧中小学英语学习技巧中小学英语学习技巧中小
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4">
					<div class="featured-box"> 
						<div class="text">
							<h3><a href="#" class="btn-inline">考研单词讲解</a></h3>
							考研单词讲解考研单词讲解考研单词讲解考研单词讲解考研单词讲解考研单词讲解考研
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="featured-box"> 
						<div class="text">
							<h3><a href="#" class="btn-inline">四六级听力</a></h3>
							四六级听力四六级听力四六级听力四六级听力四六级听力四六级听力四六级听力四六级听力
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="featured-box"> 
						<div class="text">
							<h3></h3>
							
						</div>
					</div>
				</div>
			</div>

		</section>
	</div>

<footer id="footer">
  <div class="container" style="margin-bottom: 10px">     
    <h4>联系我们</h4>
    <div class="contact-info"> 
      您可以通过以下方式联系我们
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <i class="fa fa-map-marker"></i> 湖北省 武汉市 洪山区 珞瑜东路 华中科技大学
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <i class="fa fa-phone"></i> +86 123 4567 8901 
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <i class="fa fa-envelope-o"></i> youremail@email.com 
    </div>
  </div>
  <div class="footer2">
    <div class="container">
      <div class="row">
        <div class="col-md-6 panel">
          <div class="panel-body">
            <p class="simplenav"> <a href="../index.jsp">首页</a> | <a href="about.jsp">关于</a> | <a href="courses.jsp">课程</a> | <a href="words.jsp">单词</a> | <a href="listening.jsp">听力</a> | <a href="contact.jsp">联系我们</a> </p>
          </div>
        </div>
        <div class="col-md-6 panel">
          <div class="panel-body">
            <p class="text-right"> Copyright &copy; 2016.Company name All rights
              reserved.</p>
          </div>
        </div>
      </div>
      <!-- /row of panels -->
    </div>
  </div>
</footer>
	<script>
    $('#myModal').on('shown.bs.modal', function () {
		setTimeout(function (){
			$('#username').focus();
		}, 200);
	});

    var login = document.getElementById("login");
    var register = document.getElementById("register");
    var uname = document.getElementById("forgot_uname");
    var pwd = document.getElementById("forgot_pwd");
  
    $("#register_new").on('click', function(){
      $(login).slideUp(1000,function(){
        $(register).toggleClass('collapse');
      });
    });

    $("#getBack").on('click', function(){
      $(register).slideDown(1000,function(){
        $(login).show('slow');
        $(register).addClass('collapse');
      }); 
    });
  
    $("#getUname").on('click', function(){
      $("#log_form").slideUp('swing',function(){
        $(uname).removeClass('collapse');
      });
    });
    $("#getPwd").on('click', function(){
      $("#log_form").slideUp('swing',function(){
        $(pwd).removeClass('collapse');
      });
    }); 
    $("#back").on('click', function(){
      $("#log_form").show('swing',function(){     
        $(uname).addClass('collapse');
      });
    }); 
    $("#back1").on('click', function(){
      $("#log_form").show('swing',function(){     
        $(pwd).addClass('collapse');
      });
    }); 
	</script> 
</body>
</html>
