<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <c:set var="baseurl" value="${pageContext.request.contextPath}/"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Entries Online - Words</title>
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
	<script type='text/javascript' src='../dist/js/jquery.min.js'></script>
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<script src="../dist/js/custom.js"></script>
	<script type="text/javascript" src='../dist/js/jquery-1.9.1.min.js'></script>

</head>

<body>
 <jsp:include page="header.jsp" />

	<header id="head" class="secondary">
        <div class="container">
        <h1>单词学习</h1>
        <p>
        	<a style="color: white;" href="#everydayWord">每日一词</a>
        	&nbsp;&nbsp;|&nbsp;&nbsp;
        	<a style="color:white;" href="#selectedArticle">精美文章</a>
        </p>
		    <%--    <table id="tab1">
		  		<tr>
		  			<th>单词</th>
		  			<th>音标</th>
		  			<th>释义</th>
		  			<th>例句</th>
		  		</tr>
		     	<tr>
		  			<td>${wordsCustom.wordname}</td>
		  			<td>${wordsCustom.properity}</td>
		  			<td>${wordsCustom.explanation}</td>
		  			<td>${wordsCustom.example}</td>
		  		</tr>
		  	</table> --%> 
        </div>
    </header>
	<!-- header -->

	<!-- container -->
	<div class="container">
		<div class="row">
			<!-- Daily word -->
			<section class="col-sm-12 maincontent">	
			<h3 id="everydayWord">每日一词</h3>
				<div style="width:980px;">
					<blockquote style="padding-left:500px;">
						<h3><b>${wordsCustom.wordname}</b>&nbsp;&nbsp;&nbsp;&nbsp;${wordsCustom.properity}</h3><small>${wordsCustom.explanation}</small>
						<p>${wordsCustom.example}</p>
					</blockquote>
				</div>
			</section>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<!-- Article content -->
			<section class="col-sm-12 maincontent" id="selectedArticle">
				<h3>精美文章</h3>
				<p>
					<i style="font-size:17px;font-weight:400">${article.title}</i>&nbsp;&nbsp;&nbsp;&nbsp;
					 ${article.content}
				</p>

			</section>
		</div>
	</div>
	<!-- /container -->

	<section class="container">
		<div class="heading">
			<!-- Heading -->
			<!-- Heading -->
			<h3>单词分类</h3>
			<p>针对不同的需求，我们将单词大致分类为基础单词、四六级词汇、雅思、托福、GRE等。下面主要显示主流的单词学习。</p>
			<br />
		</div>
		<div class="row flat">
			<div class="col-lg-3 col-md-3 col-xs-6">
				<ul class="plan plan1 featured">
					<li class="plan-name">基础词汇
					</li>
                    <li class="plan-price">
                        <strong>109</strong> 课
                    </li>
                    <li>
                        <strong>1000</strong> 词
                    </li>
                    <li>
                        <strong>500</strong> 人背诵
                    </li>
					<li class="plan-action">
						<a href="${baseurl}wordstudy/${1}" class="btn">开始学习</a>
					</li>
				</ul>
			</div>

			<div class="col-lg-3 col-md-3 col-xs-6">
				<ul class="plan plan2 featured">
					<li class="plan-name">四六级词汇
					</li>
                    <li class="plan-price">
                        <strong>109</strong> 课
                    </li>
                    <li>
                        <strong>1000</strong> 词
                    </li>
                    <li>
                        <strong>500</strong> 人背诵
                    </li>
					<li class="plan-action">
						<a href="${baseurl}wordstudy/${2}" class="btn">开始学习</a>
					</li>
				</ul>
			</div>

			<div class="col-lg-3 col-md-3 col-xs-6">
				<ul class="plan plan3 featured">
					<li class="plan-name">雅思
					</li>
                    <li class="plan-price">
                        <strong>109</strong> 课
                    </li>
                    <li>
                        <strong>1000</strong> 词
                    </li>
                    <li>
                        <strong>500</strong> 人背诵
                    </li>
					<li class="plan-action">
					<a href="${baseurl}wordstudy/${3}" class="btn">开始学习</a>
					</li>
				</ul>
			</div>

			<div class="col-lg-3 col-md-3 col-xs-6">
				<ul class="plan plan4 featured">
					<li class="plan-name">托福
					</li>
					<li class="plan-price">
						<strong>109</strong> 课
					</li>
					<li>
						<strong>1000</strong> 词
					</li>
					<li>
						<strong>500</strong> 人背诵
					</li>
					<li class="plan-action">
					
					<a href="${baseurl}wordstudy/${4}" class="btn">开始学习</a>
					</li>
				</ul>
			</div>
		</div>
	</section>
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
            <p class="text-right"> Copyright &copy; 2016.Company name All rights reserved.</p>
          </div>
        </div>
      </div>
      <!-- /row of panels -->
    </div>
  </div>
</footer>
	<script>
		jQuery(function(){
			
			jQuery('#camera_wrap_4').camera({
                transPeriod: 500,
                time: 3000,
				height: '600',
				loader: 'false',
				pagination: true,
				thumbnails: false,
				hover: false,
                playPause: false,
                navigation: false,
				opacityOnGrid: false,
				imagePath: '../images/'
			});

		});
	</script>
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
</html>