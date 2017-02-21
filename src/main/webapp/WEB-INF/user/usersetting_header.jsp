<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %> 
<c:set var="baseurl" value="${pageContext.request.contextPath }"></c:set>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>个人中心</title>
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <!-- 可选的Bootstrap主题文件（一般不使用） -->
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap-theme.min.css"></script>
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style type="text/css">
        .clearfix {
            zoom: 1;
        }
        #wrapper {
            width: 100%;
        }
        #head {
            width: 980px;
            margin-left: auto;
            margin-right: auto;
        }
        .mod-header {
            display: inline;
            font-size: 66px;
        }

        #mod-header-topBar {

        }
        .mod-userbar {
            position: absolute;
            top: 5px;
            right: 10px;
            z-index: 300;
        }

        #setting-nav {
            height: 42px;
            width: 100%;
            background: #fafafa;
            z-index: 1;
        }
        .nav-1 {
            height: 42px;
            background-color: #3d84e6;
            width: 100%;
            border-bottom: #3d84e6;
            margin-bottom: 20px;
            box-shadow: 0 2px 4px #ddd;
        }
        ul {
            list-style: none;
            margin-left: -35px;
        }
        .mod-nav {
            position: relative;
            width: 980px;
            margin-left: auto;
            margin-right: auto;
        }
        .mod-nav li {

            float: left;
        }
        .page-tab {
            background: #3d84e6;
        }
        .mod-nav li a{
            padding-left: 20px;
            padding-right: 20px;
            float: left;
        }
        .mod-nav li a:hover {
            background: #3C7BDB;
        }
        .mod-nav .nav-list li:active{
            color: #fff;
            -webkit-box-shadow: inset 0px 0px 0px 3px #fff;
            -moz-box-shadow: inset 0px 0px 0px 3px #fff;
            box-shadow: inset 0px 0px 0px 3px #fff;
            background: transparent;
            /*background: #3C7BDB;*/
        }

        .mod-nav li a span{
            height: 41px;
            width: 80px;
            line-height: 41px;
            float: left;
            color: #fff;
            text-align: center;
            font-size: 18px;
            font-family: \5fae\8f6f\96c5\9ed1,\9ed1\4f53;
        }

        #content {
            border-bottom: 1px solid #dddddd;
        }
        .mod-usetting {
            width:980px;
            margin: 0 auto;
            position: relative;
        }
        .mod-usetting-content {
            width: 980px;
            border-left: 1px solid #dfdfdf;
            background-color: #FBFBFB;
        }
        .mod-usetting-left {
            width: 200px;
            float: left;
            border-right: 1px solid #dfdfdf;
        }
        .mod-account {
            padding: 30px 0 0 55px;
        }
        .mod-account-info {
            position: relative;
            width: 120px;
            padding-top: 15px;
            margin-left: -15px;
            text-align: center;
            height: 50px;
            overflow: hidden;
        }
        .mod-personal-name {
            font-weight: 400;
            font-size: 16px;
            color: #333;
            font-family: \5fae\8f6f\96c5\9ed1,\9ed1\4f53;
            word-break: break-all;
            word-wrap: break-word;
            line-height: 28px;
            transition: .3s;
            z-index: 10;
        }
        .mod-usetting-dl {
            border-top-width: 0;
        }
        .mod-usetting-left dl {
            background: #FBFBFB;
        }
        .mod-usetting-dl dt {
            color: #333;
            background: #f3f3f3;
            height: 38px;
            border-bottom: 1px solid #dddddd;
            border-top:1px solid #dddddd;
            padding-left: 20px;
            font-weight: 700;
            line-height: 38px;
            font-size: 14px;
        }
        .mod-usetting-left li a {
            position: relative;
            line-height: 50px;
            float: left;
            width: 190px;
            padding-left: 15px;
            border-bottom: 1px dotted #dcdcdc;
            color: #666666;
            font-size: 12px;
        }
        .mod-usetting-dl .changepwd span {
            color: #3d84e6;
        }
        .mod-usetting-dl .changepwd a:hover{
            text-decoration: none;
            color: #3C7BDB;
        }

        .mod-usetting-right {
            display: inline-block;
            width: 779px;
            float: right;
            margin-bottom: 40px;
            padding-left: 50px;
        }
        .scan-history {
            position: relative;
            padding: 35px 30px;
            border-left: 1px solid #dfdfdf ;
        }
        .scan-history .usetting-right-title {
            margin-top: -15px;
            margin-bottom: 10px;
            font-weight: 400;
            font-size: 20px;
            font-family: "Microsoft YaHei UI";
        }
        .g-flow {
            width: 779px;
            margin: 0 auto;
            text-align: left;
        }
        .his-cou-list-ul {
            margin-right: -22px;
        }
        .his-cou-list-ul > li {
            width: 200px;
            height: 220px;
            border: 1px solid #dfdfdf;
            display: inline-block;
            margin-right: 35px;
            overflow: hidden;
            margin-bottom: 30px;
            float: left;
        }
        .his-cou-card {
            width: 200px;
            height: 220px;
            border: 1px solid #fff;
            box-sizing: border-box;
            margin: 0 auto;
            position: relative;
            -webkit-transition: all 0.3s;
            -moz-transition: all 0.3s;
            transition: all 0.3s;
        }
        .his-cou-card:after {
            position: absolute;
            z-index: -1;
            -webkit-transition: all 0.3s;
            -moz-transition: all 0.3s;
            transition: all 0.3s;
        }
        .his-cou-card img {
            margin: 10px 12px 5px 10px;
            height: 180px;
        }
        .his-cou-card a span {
            text-align: center;
        }
        .his-cou-card .card-title {
            color: #333333;
            font-size: 12px;
            font-family: \5fae\8f6f\96c5\9ed1,\9ed1\4f53;
            padding: 15px 45px 15px 65px;
        }

        .his-cou-card card-title:hover {
            text-decoration: none;
            color: #3C7BDB;
        }
        #foot {
            text-align: center;
            color: #666;
            margin-top: 20px;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div id="wrapper">
        <div id="head">
            <div class="mod-header">
                <a href="backToIndex">
                    <img src="images/user_setting.jpg" height="100px"/>
                </a>
            </div>
            <div id="mod-header-topBar" class="mod-userbar">
                <!--<span>${sessionScope.sessionUser.username}</span>-->
            </div>
        </div>
    </div>

    <div id="setting-nav">
        <div class="nav-1">
            <div class="mod-nav usetting clearfix animate-enter">
                <ul class="nav-list clearfix">
                    <li class="active">
                        <a class="page-tab " href="${baseurl}usersetting">
                            <span>首页</span>
                        </a>
                    </li>
                     <shiro:hasPermission name="student:wordbooks">  
                    <li>
                        <a class="page-tab" href="findUserWordbooksList">
                            <span>生词本</span>
                        </a>
                    </li>
                    </shiro:hasPermission>
                    <li>
                        <a class="page-tab" href="findUserWatchCourse">
                            <span>我的课程</span>
                        </a>
                    </li>
                    <li>
                        <a class="page-tab" href="userSetting">
                            <span>个人设置</span>
                        </a>
                    </li>
                    <shiro:hasPermission name="teacher:upload">  
                    <li>

 
                        <a class="page-tab" href="userUploadCourse">
                            <span>上传课程</span>
                        </a>
                    </li>
                  </shiro:hasPermission>
                </ul>
            </div>
        </div>
    </div>
 <div id="content">
        <div class="mod-usetting clearfix">
            <div class="mod-usetting-content clearfix">
                <div class="mod-usetting-left">
                    <dl class="mod-account clearfix">
                        <dd class="mod-account-avatar">
                            <img class="account-avatar-show" src="images/avatar.jpg" width="100" height="100">
                        </dd>
                        <dd class="mod-account-info">
                            <div class="mod-personal-name" id="displayUsername" title="${sessionScope.sessionUser.username }">${sessionScope.sessionUser.username }</div>
                        </dd>
                    </dl>
                    <dl class="mod-usetting-dl">
                        <dt>快速通道</dt>
                        <dd>
                            <ul class="clearfix">
                                <li class="changepwd">
                                    <a href="userPasswordChange" aria-label="Change Password">
                                        <span class="glyphicon glyphicon-lock" aria-hidden="true"></span>
                                        &nbsp;&nbsp;&nbsp;&nbsp;修改密码
                                    </a>
                                </li>
                            </ul>
                        </dd>
                    </dl>
                </div>
</body>
</html>