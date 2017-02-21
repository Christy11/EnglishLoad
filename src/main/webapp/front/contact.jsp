<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
               <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <c:set var="baseurl" value="${pageContext.request.contextPath}/"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Entries Online - Contact us</title>
    <link rel="favicon" href="../images/favicon.png">
    <link rel="stylesheet" media="screen" href="http://fonts.useso.com/css?family=Open+Sans:300,400,700">
    <link rel="stylesheet" href="../dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../dist/css/font-awesome.min.css">
    <!-- Custom styles for our template -->
    <link rel="stylesheet" href="../dist/css/bootstrap-theme.css" media="screen">
    <link rel="stylesheet" href="../dist/css/style.css">
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
 		<script src="../../dist/js/html5shiv.js"></script>
		<script src="../../dist/js/respond.min.js"></script>
	<![endif]-->
    <script type="text/javascript" src='../dist/js/jquery-1.9.1.min.js'></script>
	<script type='text/javascript' src='../dist/js/jquery.min.js'></script>
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<script src="../dist/js/custom.js"></script>
	<!-- Google Maps -->
	<!-- 
	<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
	<script src="../dist/js/google-map.js"></script>
	 -->

</head>

<body>
	 <jsp:include page="header.jsp" />
	<header id="head" class="secondary">
         <div class="container">
            <h1>联系我们</h1>
            <p>投资 | 反馈</p>
         </div>
    </header>


	<!-- container -->
	<div class="container">
		<div class="row">
			<div class="col-md-8">
				<h3 class="section-title">发送邮件</h3>
					<p>您可在此页面给我们发送邮件进行反馈。您可以写下在使用过程中的任何意见或者建议，也可以写下您对我们网站的使用感受，还可以对我们进行投资咨询。</p>						
					  
		<!--NOTE: Update your email Id in "contact_me.php" file in order to receive emails from your contact form-->
		<form name="sentMessage" id="contactForm"  novalidate> 
			<div class="control-group">
				<div class="controls">
					<input type="text" class="form-control" placeholder="姓名 | Full Name" id="name" required data-validation-required-message="Please enter your full name" />
					<p class="help-block"></p>
				</div>
			</div> 	
			
			<div class="control-group">
				<div class="controls">
					<input type="email" class="form-control" placeholder="邮箱 | Email" id="email" required data-validation-required-message="Please enter your email" />
				</div>
			</div> 	

			<div class="control-group">
				<div class="controls">
					<textarea rows="10" cols="100" class="form-control" placeholder="正文 | Message" id="message" required data-validation-required-message="Please enter your message" minlength="5" data-validation-minlength-message="Min 5 characters" maxlength="999" style="resize:none"></textarea>
				</div>
			</div> 	

			<div id="success"> </div> <!-- For success/fail messages -->
			<button type="submit" class="btn btn-success pull-right">发送</button><br />
		</form>
		</div>

		<div class="col-md-4">
			<div class="row">
				<div class="col-md-6">
					<h3 class="section-title">办公地址</h3>
					<div class="contact-info">
						<h5>地址</h5>
						<p>湖北省&nbsp;&nbsp;武汉市&nbsp;&nbsp;洪山区&nbsp;&nbsp;珞瑜东路&nbsp;&nbsp;华中科技大学</p>
						<h5>邮箱</h5>
						<p>1234567@163.com</p>
						<h5>电话</h5>
						<p>+86 123 4567 8901</p>
					</div>
				</div> 
			</div> 						
		</div>
	</div>
</div>
<!-- /container -->

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
