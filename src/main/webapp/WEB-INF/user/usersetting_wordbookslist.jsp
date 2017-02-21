<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
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
        }
        .words-note-list {
            position: relative;
            padding: 35px 30px;
            border-left: 1px solid #dfdfdf ;
        }
        .g-flow {
            width: 779px;
            margin: 0 auto;
            text-align: left;
        }
        .words-note-list-ul {
            margin-right: -22px;
        }
        .words-note-list-ul > li {
            width: 200px;
            height: 220px;
            border: 1px solid #dfdfdf;
            display: inline-block;
            margin-right: 35px;
            overflow: hidden;
            margin-bottom: 30px;
            float: left;
        }
        .words-note-card {
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
        .words-note-card:after {
            position: absolute;
            z-index: -1;
            -webkit-transition: all 0.3s;
            -moz-transition: all 0.3s;
            transition: all 0.3s;
        }
        .words-note-card img {
            margin: 10px 12px 5px 10px;
            height: 180px;
        }
        .words-note-card .words-add-img {
            margin: 59px 59px 20px;
            height: 80px;
        }
        .words-note-card a span {
            text-align: center;
        }
        .words-note-card .card-title {
            color: #333333;
            font-size: 12px;
            font-family: \5fae\8f6f\96c5\9ed1,\9ed1\4f53;
            padding: 15px 45px 15px 65px;
        }

        .words-note-card card-title:hover {
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
<jsp:include page="usersetting_header.jsp"></jsp:include>
            <div class="mod-usetting-right">
                <div class="words-note-list g-flow ">
                    <ul class="words-note-list-ul clearfix">
                        <li class="words-note-list-item">
                            <div class="words-note-card">
                                <a  title="点此新建生词本" data-toggle="modal" data-target="#newlist"><img class="words-add-img" src="images/add_note.jpg"><span class="card-title">新建生词本</span></a>
                            </div>
     
                        </li>
                        <c:forEach items="${wordbooksCustomList}"  var="wordbooksCustom">                    
             
                        <li class="words-note-list-item">
                            <div class="words-note-card">
                                <a href="${ctx}/userwordbooks" title="点击打开生词本"><img src="images/note_cover.jpg"><span class="card-title">${wordbooksCustom.wname }生词本</span></a>
                            </div>
                        </li>
                
                          
                        </c:forEach>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="newlist" class="modal fade" role="dialog" tabindex="-1" aria-labelledby="newlist" aria-hidden="true" data-backdrop="static">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header btn-success">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 id="newListLabel" class="modal-title" style="font-family: 'Microsoft YaHei UI'">新建生词本</h4>
            </div>
            <div class="modal-body">
                <div class="col-md-8" style="margin: auto 90px;">
                    <div class="well" id="new_list_form">
                        <form id="newListForm" method="POST" action="${ctx}/userWordbooksAdd">
            <div class="form-group has-feedback has-feedback-left">
                                <label class="control-label">生词本名字</label>
                                <input type="text" class="form-control" placeholder="请输入生词本的名字" name="wname" required="" title="请输入生词本的名字" />
                                <i class="glyphicon glyphicon-book form-control-feedback"></i> <span class="help-block"></span>
                            </div>
                            <div class="form-group has-feedback has-feedback-left">
                                <label class="control-label">生词本描述</label>
                                <input type="text" class="form-control" placeholder="请输入对生词本的描述" name="wexpress"/>
                                <i class="glyphicon glyphicon-pencil form-control-feedback"></i>
                            </div>

                            <button type="submit" class="btn btn-success">确定</button>
                            <button type="reset" class="btn" data-dismiss="modal" aria-hidden="true" style="float: right">取消</button>
                        </form>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</div>


<div id="foot">
    <div class="mod-footer">
        <div class="copy-box">Copyright &copy; 2017. Entries Online all rights reserved.</div>
    </div>
</div>
</body>
</html>