<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=7" />
    <title>起点网站404页面</title>
    <style type="text/css">
        <!--
        html,body{margin:0;padding:0}
        .head,.footer,.cont{width:800px;margin:0 auto}
        .head{margin-top:37px}
        .cont{margin-top:28px;background:url(http://cdn.iciba.com/web/404/404.gif) no-repeat top center; text-align:center;padding:260px 0 98px}
        h2{font:100 28px/100% "微软雅黑";margin:0}
        h3{font:100 14px/100% Arial;margin:16px 0 0;color:#666}
        h3 a{color:#118dd0;text-decoration:none}
        #search_bar{float:left;padding-left:20px;}
        .footer{border-top:1px solid #eee;padding:10px 0}
        -->
    </style>
    <script type="text/javascript">
      <!--
      var duration=5000;
      var timer=null;
      var endTime = new Date().getTime()+duration;
      function interval()
      {
        var n=(endTime-new Date().getTime())/1000;
        n=Math.floor(n);
        if(n<0) return;
        document.getElementById("timeout").innerHTML = n;
        setTimeout(interval, 1000);
      }
      window.onload=function()
      {
        timer=setTimeout("window.location.href='../../../index.html'", duration);
        interval();
      }
      -->
    </script>
</head>
<body>
<div class="head"><img alt="起点网校logo" src="../../../images/logo.png">
    <div class="cont">
        <h2>参数不完整或参数错误!</h2>
        <h3><span id="timeout">5</span>秒钟后将为您跳转到<a href="../../index.html">网站首页</a></h3>
    </div>
    <div class="footer">
        <script type="text/javascript" src="../../index.html"></script>
        <!--http://static.www.iciba.com/scripts/icibafooter.js-->
    </div>
</body>
</html>
