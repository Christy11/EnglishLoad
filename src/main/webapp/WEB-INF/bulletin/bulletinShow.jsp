<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
           <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
            <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>  
 <c:set var="baseurl" value="${pageContext.request.contextPath}/"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="free-educational-responsive-web-template-webEdu">
    <title>Entries Online - Bulletin</title>
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

<body style="text-align:center" >
 <jsp:include page="../../front/header.jsp" />
 	<header id="head" class="secondary">
            <div class="container">
                    <h1>公告</h1>
                    <p>在线英语学习平台</p>
                </div>
    </header>
    </br>
    <div></div>
 <div class="container">
      <!-- <button type="button" class="navbar-toggle"><span class="icon-bar"></span><span class="icon-bar"></span></button> -->
      <form id="searchForm" method="POST" action="${baseurl}bulletin/fowardParBulletin">
      
         <!--  <input name="title" type="text" class="form-controlinput">
           
            <input type="submit" class="btn btn-success" value="搜索"></input> -->
            <tr>
                        <td><input type="text" name="title" id="title"  style="width:300px; height:35px;" /></td>
                        <td><input type="submit" value="查询" class="btn btn-success"/></td>
                    </tr>
       
      </form>
   
  </div>
  </br>
<!--   <div class="form-group has-feedback has-feedback-left"> -->
 <div style="width:700px;margin-left:auto;margin-right:auto">
 <table id="tab" border="1" >
  		<%-- <tr>
  			<th>公告标题</th>
  			<th>公告内容</th>
  			<th>公告时间</th>
  			<!-- <th>功能</th> --> 
  		</tr>
  		 
  		 <c:forEach items="${bulletinList}"  var="bulletin">
     	<tr>
  			<td><a href="${baseurl}/bulletin/showBulletin?id=${bulletin.bulletinId}">${bulletin.title}</a></td>
  			<td>${fn:substring(bulletin.content, 0, 20)}<a href="${baseurl}/bulletin/showBulletin?id=${bulletin.bulletinId}">...</a></td>
  			 <td> <fmt:formatDate value="${bulletin.date}" pattern="yyyy-MM-dd HH:mm:ss"/> </td>	
  		</tr>
     </c:forEach> --%>
   	 <c:forEach items="${bulletinList}"  var="bulletin">
   	 <p><a href="${baseurl}/bulletin/showBulletin?id=${bulletin.bulletinId}">${bulletin.title}</a></p>
   	 </c:forEach>
	</table>
	 <ul >
                    
                      &nbsp<a href="${baseurl}/bulletin/showAllBulletin?page=${page.prePage}">上一页</a>
                    <a href="${baseurl}/bulletin/showAllBulletin?page=${1}">1</a>
                    <a href="${baseurl}/bulletin/showAllBulletin?page=${2}">2</a>
                    <a href="${baseurl}/bulletin/showAllBulletin?page=${3}">3</a>
                    <a href="${baseurl}/bulletin/showAllBulletin?page=${4}">4</a>
                    <a href="${baseurl}/bulletin/showAllBulletin?page=${5}">5</a>
                   <a href="${baseurl}/bulletin/showAllBulletin?page=${page.nextPage}">下一页</a>
              </ul> 
	</div>
	<%-- <div class="pagenav" style="width:600px;margin-left:auto;margin-right:auto">
                <ul >
                    
                      <a href="${baseurl}/bulletin/showAllBulletin?page=${page.prePage}">上一页</a>
                    <a href="${baseurl}/bulletin/showAllBulletin?page=${1}">1</a>
                    <a href="${baseurl}/bulletin/showAllBulletin?page=${2}">2</a>
                    <a href="${baseurl}/bulletin/showAllBulletin?page=${3}">3</a>
                    <a href="${baseurl}/bulletin/showAllBulletin?page=${4}">4</a>
                    <a href="${baseurl}/bulletin/showAllBulletin?page=${5}">5</a>
                   <a href="${baseurl}/bulletin/showAllBulletin?page=${page.nextPage}">下一页</a>
              </ul> 
    </div> --%>
   
        
  
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
            <p class="simplenav"> <a href="../index.jsp">首页</a> | <a href="${baseurl}front/about.jsp">关于</a> | <a href="${baseurl}front/courses.jsp">课程</a> | <a href="${baseurl}front/words.jsp">单词</a> | <a href="${baseurl}front/listening.jsp">听力</a> | <a href="${baseurl}front/contact.jsp">联系我们</a> </p>
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
