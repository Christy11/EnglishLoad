<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="baseurl" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<head>
    <meta charset="UTF-8">
    <title>单词学习</title>
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="dist/css/bootstrap-theme.css" media="screen">
    <link rel="stylesheet" href="dist/css/style.css">
    <link rel="stylesheet" href="dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="dist/css/font-awesome.min.css">
    <style type="text/css">
        body {
            background-repeat: no-repeat;
            background-size: 100% 100%;
            background-attachment: fixed;
        }

        .word_box {
            width: 762px;
            height: 480px;
            margin:50px 250px;
            border-radius: 6px;
            border: 1px solid #5e5e5e;
        }

        .word_title {
            display: inline-block;
            width: 100%;
            height: 45px;
            border-radius: 6px;
            background-color: #4B92FE;
            position: relative;
        }

        .title_img {
            display: inline-block;
            position: relative;
            width: 300px;
            height: 45px;
            padding-right: 25px;
        }

        img {
            margin: 10px 15px;
            width: 150px;
            height: 25px;
        }

        .title_btn {
            display: inline-block;
            position: relative;
            padding-left: 360px;
            width: 400px;
            height: 45px;
            line-height: 45px;
        }

        .word_tip {
            margin-top: -5px;
            padding: 0px 25px 5px;
            height: 35px;
            line-height: 30px;
            background-color: #f4f4f4;
            border-top: 5px solid #4B92FE;
            border-bottom: 1px solid #c2c2c2;
        }

        .word_h2 {
            display: inline-block;
            font-weight: bold;
            font-size: 14px;
        }

        .word_num {
            display: inline-block;
            font-weight: normal;
            font-size: 12px;
            color: #666;
            margin: 0px 15px;
        }

        .word_main {
            border-bottom: 1px solid #E0E0E0;
            height: 400px;
            background: #fff;
        }

        .word_main_list li {
            font-weight:700;
            padding: 3px 0px 5px;
            color:#333;
            overflow:hidden;
        }

        .word_list_page_num span {
            border: 1px solid #bfbfbf;
            background: #fff;
            display: inline-block;
            padding: 2px 5px;
            line-height: 14px;
            font-size: 12px;
            color: #575757;
            font-weight: 100;
            border-radius: 2px;
            margin: 0 2px;
            zoom: 1;
        }

        .word_footer {
            margin: 314px 0px 0px;
            position: relative;
            border-top: 1px solid #bfbfbf;
            border-radius: 0 0 6px 6px ;
            height: 49px;
            background: #f4f4f4;
        }

        .footer_add {
            display: inline-block;
            margin: 8px 45px 8px ;
        }

        .word_footer_scb{
            position: relative;
            float: left;
        }

        .fl {
            float: left !important;
        }

        .close-sound {
            width: 762px;
            padding: 10px 35px;
        }

        .change-pic-left2 a {
            float: left;
            width: 15px;
            height: 22px;
            display: inline-block;
            margin: 100px 20px 0px 30px;
        }

        .change-pic-right a {
            float: left;
            display: inline-block;
            width: 15px;
            height: 22px;
            margin: 100px 30px 0px 20px;
            cursor: pointer;
        }

        .change-pic-mid-box {
            background: #f5f5f5;
            padding-top: 25px;
            padding-bottom: 25px;
            margin: 0px 0px 15px;
            width: 630px;
            height: 260px;
            overflow: hidden;
            position: relative;
        }

        .word_sound_list {
            position: relative;
            height: 30px;
            line-height: 30px;
            padding: 0px 0px 10px 40px;
            margin-bottom: 5px;
        }

        .word_sound_list .word {
            color: #3B93EE;
            font-size: 28px;
            font-weight: bold;
            float: left;
            margin-right: 15px;
        }

        .word_sound_list .sound {
            color: #666666;
            font-size: 20px;
            float: left;
            margin-right: 15px;
            font-family: "lucida sans unicode",arial;
        }

        .word_sy {
            font-weight: 700;
            width: 630px;
        }

        .change-pic-mid dl dt{
            display: inline-block;
            padding: 8px 0px 0px 12px;
        }
        .change-pic-mid dl dt {
            color: #666666;
            font-size: 16px;
            float: left;
            line-height: 24px;
            margin-top: 11px;
        }

        .change-pic-mid dl{
            color: #333333;
            width: 560px;
            line-height: 28px;
            margin-left: 30px;
            margin-bottom: 10px;
        }
        .change-pic-mid dt {
            float: left;
            width: 70px;
            color: #666666;
            font-size: 16px;
            float: left;
            line-height: 24px;
            margin-top: 25px;
        }
        .change-pic-mid dd {
            float: right;
            color: #333333;
            width: 450px;
            line-height: 28px;
            padding: 15px 0px 0px;
            margin-left: -20px;
        }
		.btn-word {
		    color: #fff;
    		background-color: #4B92FE;
   		 	border-color: #269abc
		}
		a.btn-word:hover{
    		color: #fff;
    		background-color: #3d84e6;
    		border-color: #269abc
		}

    </style>
    <link rel="stylesheet" href="dist/css/bootstrap.min.css">
</head>
<body background="images/img1.jpg">
<div class="word_box">
    <div class="word_title">
        <div class="title_img"><img src="images/img2.jpg"></div>
        <div class="title_btn">
        <a href="${baseurl}/randomWord">
            <input type="button" class="btn btn-word" value="返回">
        </a> 
        </div>
    </div>
    <div class="word_tip">
        <div class="word_h2">四级必备词汇 第1课</div>
        <div class="word_num"></div>
    </div>

    <div class="word_main">
        <div class="mid" style="padding-bottom:0px;">
            <div class="change-pic cl" c_id="1" >
                <div class="close-sound">
                    <span id="span_fr">${page.pageNum}/${page.pages}</span>
                </div>
                <div class="change-pic-left2">
                <c:choose>
						<c:when test="${page.pageNum eq 1}">
							<a href="" onclick="return false" title="已经是第一页了"><span class="glyphicon glyphicon-chevron-left"></span></a>						
						</c:when>
						<c:otherwise>
							<a href="${baseurl}/wordsindex?gradeId=${gradeId}&page=${page.prePage}" ><span class="glyphicon glyphicon-chevron-left"></span></a>
						</c:otherwise>
					</c:choose>
                </div>
                
                <div class="change-pic-mid fl">
                
                    <div id="change-pic-mid-1" class="change-pic-mid-box">
                    <c:forEach items="${wordsCustomList}"  var="wordsCustom"> 
                        <div class="word_sound_list">
                            <span class="word">${wordsCustom.wordname}</span>
                            <span class="sound" lang="EN-US" xml:lang="EN-US">${wordsCustom.properity}</span>
                            <a class="icon_s2" pron_id="1"  title="发音,按F9键单词可发音" href="javascript:void(0)" id="aaa.mp3" onMouseOver="asplay_top(this.id);"></a>
                            </div>
                            <dl class="word_sy">
                                <dt>释义：</dt>
                                <dd title=${wordsCustom.explanation}>${wordsCustom.explanation}</dd>
                            </dl>
       
                            <!--例句-->
                            <dl class="word_lj">
                                <dt>例句：</dt>
                                <dd class="card_dj_0 ">
                                    ${wordsCustom.example }
                                    <a class="icon_s2 ljfy_1" title="例句发音,按F8键可发音" href="javascript:void(0)" id="http://res-tts.iciba.com/tts_new_dj//0/8/5/085abec4f0addbea9da21210a658c3ec.mp3" onMouseOver="asplay_top(this.id);" onClick="asplay_top(this.id);">
                                    </a>
                      
                                </dd>
                      
                            </dl>
                             </c:forEach>
                        </div>
                        
                        <div class="change-pic-mid-bot"></div>
                    </div>
                  
                    <div class="change-pic-right">
	                    <c:choose>
							<c:when test="${page.pageNum eq page.pages}">
								<a href=""  onClick="return false" title="已经是最后一页了"><span class="glyphicon glyphicon-chevron-right"></span></a>
							</c:when>
							<c:otherwise>
								<a href="${baseurl}/wordsindex?gradeId=${gradeId}&page=${page.nextPage}"  onClick="preornext('next',1);" title="按→和回车键切换下页"><span class="glyphicon glyphicon-chevron-right"></span></a>
							</c:otherwise>
						</c:choose>
                        
                    </div>
                </div>


            <div class="word_footer">
                <div class="word_footer_scb">
                    <a href="${baseurl}/wordstudy/${gradeId}" class="btn btn-default footer_add">返回单词列表</a>
                    <div class="word_footer_scb_j"></div>
                    <div class="word_footer_scb_box" style="display:none">
                        <div class="word_footer_scb_add">
                            <a href="javascript:;" class="word_footer_scb_add_t" sid=""></a>
                            添加到
                            <div class="word_footer_scb_add_l" style="">
                            </div>
                        </div>
                        <p><a class="word_list_lable default_add_after" onclick="check($(this))" title="之后也默认添加到该生词本中" href="###"></a>之后也默认添加到该生词本中</p>
                        <a class="word_button_blue submit_select_scb" href="javascript:;" onclick="clickCount(18)"><span>提 交</span></a>
                        <a href="javascript:;" class="word_footer_scb_qx">取消</a>
                        <div class="word_footer_scb_box_t"></div>
                    </div>
                    <span class="add_success" style="display:none;">添加成功！</span>
                </div>
            </div>
        </div>
</div>
</body>
</html>