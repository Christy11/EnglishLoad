<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
           <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <c:set var="baseurl" value="${pageContext.request.contextPath}/"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="free-educational-responsive-web-template-webEdu">
    <title>Entries Online - About us</title>
    <link rel="favicon" href="images/favicon.png">
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

	<script type="text/javascript" src='../dist/js/jquery-1.9.1.min.js'></script>
    <script type='text/javascript' src='../dist/js/jquery.min.js'></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
    <script src="../dist/js/custom.js"></script>
</head>

<body>
 <jsp:include page="header.jsp" />
 	<header id="head" class="secondary">
            <div class="container">
                    <h1>关于我们</h1>
                    <p>免费 | 英语学习网站</p>
                </div>
    </header>


    <!-- container -->
    <section class="container">
        <div class="row">
            <!-- main content -->
            <section class="col-sm-8 maincontent">
                <h3>关于我们</h3>
                <p>
                    <img src="../images/about.jpg" alt="" class="img-rounded pull-right" width="300">
                    我们是一个完全免费的英语学习网站，旨在为用户提供更集中的方法和途径去了解和学习英语。我们是一个完全免费的英语学习网站，旨在为用户提供更集中的方法和途径去了解和学习英语。我们是一个完全免费的英语学习网站，旨在为用户提供更集中的方法和途径去了解和学习英语。
                </p>
                    <p>我们是一个完全免费的英语学习网站，旨在为用户提供更集中的方法和途径去了解和学习英语。我们是一个完全免费的英语学习网站，旨在为用户提供更集中的方法和途径去了解和学习英语。我们是一个完全免费的英语学习网站，旨在为用户提供更集中的方法和途径去了解和学习英语。我们是一个完全免费的英语学习网站，旨在为用户提供更集中的方法和途径去了解和学习英语。
                </p>
                
                <h3>成就</h3>
                <strong>2016</strong>
                <p>获得国内最受欢迎的英语学习网站第一名。获得国内最受欢迎的英语学习网站第一名。获得国内最受欢迎的英语学习网站第一名。获得国内最受欢迎的英语学习网站第一名。获得国内最受欢迎的英语学习网站第一名。获得国内最受欢迎的英语学习网站第一名。获得国内最受欢迎的英语学习网站第一名。获得国内最受欢迎的英语学习网站第一名。获得国内最受欢迎的英语学习网站第一名。获得国内最受欢迎的英语学习网站第一名。获得国内最受欢迎的英语学习网站第一名。获得国内最受欢迎的英语学习网站第一名。</p>
                <strong>2015</strong>
                <p>获得国内最受欢迎的英语学习网站第一名。获得国内最受欢迎的英语学习网站第一名。获得国内最受欢迎的英语学习网站第一名。获得国内最受欢迎的英语学习网站第一名。获得国内最受欢迎的英语学习网站第一名。获得国内最受欢迎的英语学习网站第一名。获得国内最受欢迎的英语学习网站第一名。获得国内最受欢迎的英语学习网站第一名。获得国内最受欢迎的英语学习网站第一名。获得国内最受欢迎的英语学习网站第一名。获得国内最受欢迎的英语学习网站第一名。获得国内最受欢迎的英语学习网站第一名。获得国内最受欢迎的英语学习网站第一名。获得国内最受欢迎的英语学习网站第一名。</p>
            </section>
            <!-- /main -->

            <!-- Sidebar -->
            <aside class="col-sm-4 sidebar sidebar-right">

                <div class="panel">
                    <h4>最新公告</h4>
                     <c:forEach items="${bulletinList}"  var="bulletin">
                    <ul class="list-unstyled list-spaces">
                    <!-- <li><a href="">新课程1</a><br> -->
                         <p><a class="small text-muted" href="${baseurl}bulletin/showBulletin?id=${bulletin.bulletinId}">${bulletin.title}</a></p>
                    </ul>
                    </c:forEach>
                
                </div>
               
            </aside>
            <!-- /Sidebar -->
        </div>
    </section>
    <!-- /container -->

    <section class="team-content">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h3>团队</h3>
                    <p>我们拥有强大的教师团队，分别是abc。我们拥有强大的教师团队，分别是abc。我们拥有强大的教师团队，分别是abc。我们拥有强大的教师团队，分别是abc。我们拥有强大的教师团队，分别是abc。</p>
                    <br />
                </div>
            </div>
            <div class="row">

                <div class="col-md-3 col-sm-6 col-xs-6">
                    <!-- Team Member -->
                    <div class="team-member">
                        <!-- Image Hover Block -->
                        <div class="member-img">
                            <!-- Image  -->
                            <img class="img-responsive" src="../images/photo-1.jpg" alt="">
                        </div>
                        <!-- Member Details -->
                        <h4>陶健</h4>
                        <!-- Designation -->
                        <span class="pos">总监</span>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-6">
                    <!-- Team Member -->
                    <div class="team-member pDark">
                        <!-- Image Hover Block -->
                        <div class="member-img">
                            <!-- Image  -->
                            <img class="img-responsive" src="../images/photo-2.jpg" alt="">
                        </div>
                        <!-- Member Details -->
                        <h4>王欣</h4>
                        <!-- Designation -->
                        <span class="pos">指导</span>
                  </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-6">
                    <!-- Team Member -->
                    <div class="team-member pDark">
                        <!-- Image Hover Block -->
                        <div class="member-img">
                            <!-- Image  -->
                            <img class="img-responsive" src="../images/photo-3.jpg" alt="">
                        </div>
                        <!-- Member Details -->
                        <h4>陈颖慧</h4>
                        <!-- Designation -->
                        <span class="pos">经理</span>
                   </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-6">
                    <!-- Team Member -->
                    <div class="team-member pDark">
                        <!-- Image Hover Block -->
                        <div class="member-img">
                            <!-- Image  -->
                            <img class="img-responsive" src="../images/photo-4.jpg" alt="">
                        </div>
                        <!-- Member Details -->
                        <h4>吴晨</h4>
                        <!-- Designation -->
                        <span class="pos">设计</span>
                   </div>
                </div>
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
