
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
    <link rel="favicon" href="${baseurl}/images/favicon.png">
    <link rel="stylesheet" media="screen" href="http://fonts.useso.com/css?family=Open+Sans:300,400,700">
    <link rel="stylesheet" href="${baseurl}/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="${baseurl}/dist/css/font-awesome.min.css">
    <link rel="stylesheet" href="${baseurl}/dist/css/bootstrap-theme.css" media="screen">
    <link rel="stylesheet" href="${baseurl}/dist/css/style.css">
    <link rel='stylesheet' id='camera-css'  href='${baseurl}/dist/css/camera.css' type='text/css' media='all'>
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="${baseurl}/dist/js/html5shiv.js"></script>
    <script src="${baseurl}/dist/js/respond.min.js"></script>
    <![endif]-->
    <script type="text/javascript" src='${baseurl}/dist/js/jquery-1.9.1.min.js'></script>
    <script type="text/javasrcipt" src="${baseurl}/dist/js/modernizr-latest.js"></script>
    <script type='text/javascript' src='${baseurl}/dist/js/jquery.min.js'></script>
    <script type='text/javascript' src='${baseurl}/dist/js/fancybox/jquery.fancybox.pack.js'></script>
    <script type='text/javascript' src='${baseurl}/dist/js/jquery.mobile.customized.min.js'></script>
    <script type='text/javascript' src='${baseurl}/dist/js/jquery.easing.1.3.js'></script>
    <script type='text/javascript' src='${baseurl}/dist/js/camera.min.js'></script>
    <script type='text/javascript' src="${baseurl}/dist/js/bootstrap.min.js"></script>    
    <script type='text/javascript' src="${baseurl}/dist/js/custom.js"></script>
</head>
<body>
<!-- 置顶的导航栏 -->
<!-- Fixed navbar -->
<div class="navbar navbar-inverse">
    <div class="container">
        <div class="navbar-header">
            <!-- Button for smallest screens -->
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
            <a class="navbar-brand" href="index.jsp"> <img src="${baseurl}/images/logo.png" alt="Techro HTML5 template"></a> </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav pull-right mainNav">
                <li class="active"><a href="${baseurl}loginvalue.action">首页</a></li>
                <li><a href="${baseurl}bulletin/about">关于</a></li>
                <li><a href="${baseurl}front/courses.jsp">课程</a></li>
                <li><a href="${baseurl}randomWord">单词</a></li>
                <li><a href="${baseurl}front/listening.jsp">听力</a></li>
                <li><a href="${baseurl}front/contact.jsp">联系我们</a></li>
                <%-- 根据用户是否登录，显示不同的链接 --%>
					<c:choose>
						<c:when test="${empty sessionScope.sessionUser }">
							<li>
								<button type="button" class="btn btn-success btn-block"
									data-toggle="modal" data-target="#myModal">登录</button>
							</li>
						
						</c:when>
						<c:otherwise>
							<li>
							<li><a href="${baseurl}usersetting">${sessionScope.sessionUser.username }</a></li>
							<li><a href= "${baseurl}logout.action">退出</a></li>
									</button>
							</li>
						</c:otherwise>
					</c:choose>


				</ul>
        </div>
        <!--/.nav-collapse -->
    </div>
</div>
<!-- /.navbar -->
<!-- 此处为模态框，在模态框中可以实现登录和注册的功能。用户可用手机号或者邮箱登录，注册时手机号和邮箱都要提供 -->
<!-- modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header btn-success" style="border-top-left-radius:5px;border-top-right-radius:5px;">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">起点账号登录</h4>
            </div>
            <div class="modal-body" id="login">
                <div class="col-md-6">
                    <div class="row">
                        <div class="well" id="log_form">
                            <form id="loginForm" method="post" action="${baseurl}login.action">
                                <div class="form-group has-feedback has-feedback-left">
                                    <label class="control-label">用户名</label>
                                    <input name="username" type="text" class="form-control" placeholder="用户名" required="" title="请输入用户名" />
                                    <i class="glyphicon glyphicon-user form-control-feedback"></i> <span class="help-block"></span> </div>
                                <div class="form-group  has-feedback has-feedback-left ">
                                    <label for="password" class="control-label">密码</label>
                                    <input type="password" class="form-control" placeholder="密码" id="password" name="password" required="" value="" title="请输入密码" />
                                    <i class="form-control-feedback glyphicon glyphicon-lock"></i> <span class="help-block"></span> </div>
                                <div id="loginErrorMsg" class="alert alert-error hide">用户名或密码错误</div>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" name="rememberMe" id="remember">
                                        记住密码</label>
                                </div>
                                <button type="submit" class="btn btn-success btn-block">登录</button>
                                <p> <a class="pull-left" data-toggle="collapse" href="" aria-expanded="false" aria-controls="" id="getUname">忘记用户名</a> <a class="pull-right" data-toggle="collapse" href="" aria-expanded="false" aria-controls="" id="getPwd">忘记密码</a> </p>
                            </form>
                        </div>
                        
                        
                        <!-- well -->
                        <div class="collapse" id="forgot_uname">
                            <div class="form-group has-feedback has-feedback-left">
                                <label class="control-label">手机号</label>
                                <input type="email" class="form-control" placeholder="手机号" required="" title="请输入手机号">
                                <i class="glyphicon glyphicon-earphone form-control-feedback"></i> <span class="help-block"></span> </div>
                            <button type="submit" class="btn btn-success btn-block">确定</button>
                            <p><a id="back">返回登录</a></p>
                        </div>
                        <div class="collapse" id="forgot_pwd">
                            <div class="form-group has-feedback has-feedback-left">
                                <label class="control-label">邮箱</label>
                                <input type="email" class="form-control" placeholder="邮箱" required="" title="请输入邮箱" />
                                <i class="glyphicon glyphicon-envelope form-control-feedback"></i> <span class="help-block"></span> </div>
                            <button type="submit" class="btn btn-success btn-block">确定</button>
                            <p><a id="back1">返回登录</a></p>
                        </div>
                    </div>
                    <!-- row -->
                </div>
                <!-- col6 -->
                <div class="col-md-6">
                    <p class="lead">还不是学员...</p>
                    <p><img src="${baseurl}/images/picture1.png"></p>
                    <p><a href="${baseurl}front/register.jsp" class="btn btn-success btn-block" id="register_new" data-toggle="collapse" aria-expanded="false" aria-controls="register">一键注册</a></p>
                </div>
                <div class="clearfix"></div>
            </div>
            <!-- End of modal-body -->
            <!--Registration Modal-->
            <div class="modal-body collapse" id="register">
                <div class="col-md-6">
                    <div class="row">
                        <div class="well">
                            <form id="regisForm" method="POST" action="${baseurl}reguser" >
                                <div class="form-group has-feedback has-feedback-left">
                                    <label class="control-label">邮箱</label>
                                    <input type="email" name="email" class="form-control" placeholder="邮箱" required pattern="^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$" title="邮箱格式：xxx@xxx.xxx" />
                                    <i class="glyphicon glyphicon-envelope form-control-feedback"></i> <span class="help-block"></span> </div>
                                      <div class="form-group has-feedback has-feedback-left">
                                    <label class="control-label">手机号</label>
                                    <input type="text" name="phone" class="form-control" placeholder="手机号" required="" title="手机号" id="121"/>
                                    <i class="glyphicon glyphicon-phone form-control-feedback"></i> <span class="help-block"></span> </div>
                                <div class="form-group has-feedback has-feedback-left">
                                    <label class="control-label">用户名</label>
                                    <input type="text" name="username" class="form-control" placeholder="用户名" required="" title="请输入用户名" id="123"/>
                                    <i class="glyphicon glyphicon-user form-control-feedback"></i> <span class="help-block"></span> </div>
                                <div class="form-group  has-feedback has-feedback-left ">
                                    <label for="password" class="control-label">密码</label>
                                    <input name="password" type="password" class="form-control" placeholder="密码" id="password1" name="password" value="" required onchange="checkPasswords()" ="" title="请输入密码">
                                    <i class="form-control-feedback glyphicon glyphicon-lock"></i> <span class="help-block"></span> </div>
                                <div class="form-group  has-feedback has-feedback-left ">
                                    <label for="password" class="control-label">确认密码</label>
                                    <input type="password" class="form-control" placeholder="确认密码" id="password2" name="password" value="" required="" title="请再次输入密码">
                                    <i class="form-control-feedback glyphicon glyphicon-lock"></i> <span class="help-block"></span> </div>
                                <div id="loginErrorMsg" class="alert alert-error hide">用户名或密码有误</div>
                                 <div class="form-group has-feedback has-feedback-left">
                                    <label class="control-label">加密盐</label>
                                    <input type="text" name="salt" class="form-control" placeholder="加密盐" required="" title="加密盐" id="salt"/>
                                    <i class="glyphicon glyphicon-compressed form-control-feedback"></i> <span class="help-block"></span> 
                                 </div>
                                 <div class="form-group has-feedback has-feedback-left">
                                    <label class="control-label ">身份选择&nbsp;&nbsp;</label>
                                    <select class="btn-group btn-block form-control" id="dropdownMenu1">
                                    	<option value="1">学生</option>
                                    	<option value="2">老师</option>
                                    </select>
                                 </div>
                                <button type="submit" class="btn btn-success btn-block">注册</button>
                            </form>
                            
                        </div>
                        <!-- well -->
                    </div>
                    <!-- row -->
                </div>
                <!-- col6 -->
                <div class="col-md-6">
                    <p class="lead" style="margin-top:5px;">已有账号？</p>
                    <p style="margin-top:30px;"><img src="${baseurl}/images/picture1.png"></p>
                    <p style="margin-top:36px;"> <a href="#login" class="btn btn-success btn-block" id="getBack" data-toggle="collapse" aria-expanded="false" aria-controls="login">返回登录</a> </p>
                </div>
                <div class="clearfix"></div>
            </div>
            <!-- Modal registration-->
        </div>
        <!-- modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->


<script>
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