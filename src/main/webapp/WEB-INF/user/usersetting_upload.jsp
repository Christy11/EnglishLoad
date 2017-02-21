<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
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
        .course-form {
            margin: 25px 175px;
        }
        table {
            white-space: normal;
            font-size: 14px;
            line-height: 24px;
        }
        table tr {
            height: 45px;
        }
        .course-upload .lable{
            width: 100px;
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
            margin: 0 0 0 15px;
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
            <div class="mod-usetting-right">
                <form method="post" action="${pageContext.request.contextPath }/userCourseUpload" class="course-form" enctype="multipart/form-data">
    
                <table>
                    <tr>
                        <td class="lable">课程名</td>
                        <td><input type="text" name="coursename"  id="class"/></td>
                    </tr>
                 <!--    <tr>
                        <td class="lable">课程开始时间</td>
                        <td><input type="text" name="" id=""></td>
                    </tr> -->
                    <tr>
                        <td class="lable">课程等级</td>
                        <td><select name="gradeId" class="box">
							<option value="1">CET4</option>
							<option value="2">CET6</option>
							<option value="3">GRE</option>
							<option value="4">雅思</option>
							<option value="5">托福</option>
					</select></td>
                    </tr>
                    <tr>
                        <td class="lable">课程类别</td>
                        <td><select name="categoryId" class="box">
                            <option value="1">口语</option>
                            <option value="2">听力</option>
                            <option value="3">单词</option>
                            <option value="4">写作</option>
                            <option value="5">语法</option>
                             <option value="6">阅读</option>
                        </select>
                        </td>
                    </tr>

                    <tr>
                        <td class="lable">课程授课老师</td>
                        <td><input type="text" name="teacher" id="classTeacher"/></td>
                    </tr>
                    <tr>
                        <td class="lable">课程图片</td>
                        <td><input type="file"  name="course_pic" id="image"/></td>
                    </tr>
                    <tr>
                        <td class="lable">课程内容</td>
                        <td><input type="file" name="course_video"  id="video"/></td>
                    </tr>
                    <tr>
                        <td class="lable">课程简介</td>
                        <td><textarea name="courseintro" rows="4" cols="30"></textarea></td>
                    </tr>
                    <tr>
                        <td class="lable">课程点击率</td>
                        <td><input type="text" name="clickrate"  readonly="readonly" /><br/></td>
                    </tr>
                    <tr>
                        <td class="lable">课程上传者</td>
                        <td><input type="text" name="shangchuanzhe" id="shangchuanzhe"/></td>
                    </tr>
                    <tr>
                        <td class="lable">课时</td>
                        <td><input type="text" name="period"id="keshi"/></td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <input type="submit" value="确认添加" class="button"/>
                            <input type="reset"  value="重置" class="button" id="reset"/>
                        </td>
                    </tr>
                </table>
            </form>
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