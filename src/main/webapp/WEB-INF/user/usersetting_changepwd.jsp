<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>个人中心</title>
    <link rel="stylesheet" href="dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="dist/css/bootstrap-theme.css" media="screen">
    <script type="text/javascript" src="dist/js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="dist/js/bootstrap.min.js"></script>

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
        .mod-nav li{
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
        .nav-list li a:active{
            background: #3C7BDB;
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
            position: relative;
            width: 779px;
            float: right;
            border-left: 1px solid #dfdfdf;
        }
        .com, .box.com{
            margin: 20px;
            background-color: #FBFBFB;
            border: 1px solid #ddd;
        }
        .box {
            position: relative;
            border: 1px solid #aaa;
            border-top: 1px solid #ddd;
        }
        .box .head {
            position: relative;
            min-height: 108px;
            color: #333;
            padding: 15px 115px;
        }
        .com .mainbox {
            padding: 5px 160px;
            position: relative;
        }
        .com .h30 {
            min-height: 30px;
            margin-bottom: 10px;
        }
        .com .c {
            position: relative;
            width: 590px;
            line-height: 30px;
            color: #666;
        }
        .com .c6 {
            width: 300px;
        }
        .com .c6 i{
            color: red;
        }
        .com.c6 label {
            width: 75px;
        }
        .com .sh {
            width: 150px;
            vertical-align: middle;
        }
        .txt {
            height: 28px;
            font: 14px/28px "Microsoft YaHei UI";
            position: relative;
            z-index: 1;
            text-indent: 5px;
        }
        .box .btnbox {
            padding: 0 0 25px;
        }
        .btnbox {
            width: 100%;
            text-align: center;
            padding: 15px 0;
        }
        .p_btn {
            display: inline-block;
            min-width: 80px;
            height: 28px;
            line-height: 28px;
            font-size: 14px;
            font-family: "Microsoft YaHei UI";
            color: #fff;
            text-align: center;
            cursor: pointer;
            margin: 0 10px;
            background-color: #3d84e8;
            border: 1px solid #3d84e8;
            -webkit-border-radius: 2px;
            -moz-border-radius: 2px;
            border-radius: 2px;
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
<jsp:include page="usersetting_header.jsp"></jsp:include>
<form action="userPasswordChangeCommit" method="post">
            <div class="mod-usetting-right">
                <div class="box mk com" id="pwdchange">
                    <div class="head" id="Pwd">
                        <div class="mainbox">
                            <div class="h30">
                                <div class="c c6">
                                    <label>原始密码</label>
                                    <i>*</i>
                                    <div class="sh">
                                        <div class="txt">
                                            <input id="origin_pwd" class="ef" maxlength="40" type="text" placeholder="初始密码">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="h30">
                                <div class="c c6">
                                    <label>修改密码</label>
                                    <i>*</i>
                                    <div class="sh">
                                        <div class="txt">
                                            <input name="password" id="letter_pwd" class="ef" maxlength="40" type="password" placeholder="修改密码">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="h30">
                                <div class="c c6">
                                    <label>再次确认</label>
                                    <i>*</i>
                                    <div class="sh">
                                        <div class="txt">
                                            <input id="confirm_pwd" class="ef" maxlength="40" type="password" placeholder="请再次输入修改后的密码">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="h30">
                                <div class="c c6">
                                    <label>二次加密</label>
                                    <i>*</i>
                                    <div class="sh">
                                        <div class="txt">
                                            <input name="salt" id="double_encode" class="ef" maxlength="40" type="text" placeholder="${user.salt}">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="btnbox">
                    <input type="submit" class="p_btn" id="basedetail_save" value="保存"/>
                    
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</form>
<div id="foot">
    <div class="mod-footer">
        <div class="copy-box">Copyright &copy; 2017. Entries Online all rights reserved.</div>
    </div>
</div>
</body>
</html>