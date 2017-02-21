<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   <c:set var="baseurl" value="${pageContext.request.contextPath}/"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>听力学习</title>

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

        .word_main_thead {
            margin: 0px 30px;
            width: 702px;
            padding: 10px 15px 3px ;
            border-bottom: 1px dashed #c2c2c2;
        }

        .word_main_list {
            margin: 0 0 0 30px;
            padding: 10px 15px 5px;
        }

        .word_main_list li {
            font-weight:700;
            padding: 3px 0px 5px;
            color:#333;
            overflow:hidden;
        }

        .word_main_list_l {
            display: inline-block;
            overflow: hidden;
            margin-left: 10px;
            width: 100px;
            text-align: center;

        }
        .word_main_list_v {
            display: inline-block;
            overflow: hidden;
            width: 320px;
            color: #888;
            text-align: center;
        }
        .word_main_list_C {
            display: inline-block;
            overflow: hidden;
            color: #666;
            width: 100px;
            text-align: center;
        }
        .word_main_list_E {
            display: inline-block;
            overflow: hidden;
            color: #666;
            width: 100px;
            text-align: center;
        }

        a.icon_s {
            display: inline-block;
            width: 16px;
            height: 14px;
            margin-left: 10px;
            background: url(images/icon.gif) no-repeat;
            vertical-align: -3px;
        }

        .word_list_page_num {
            bottom: 5px;
            text-align: center;
            height: 23px;
            width: 100%;
        }

        .word_list_page_num span.word_list_page_num_hover {
            background: #4B92FE;
            color: #fff;
            border: 1px solid #3b93ee;
            font-weight: 700;
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
            margin: 10px 0px 0px;
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

        .footer_card {
            display: inline-block;
            line-height: 50px;
        }

        .word_footer_scb{
            position: relative;
            float: left;
        }

        .word_footer .fr {
            margin: 8px 45px 8px;
        }

        .fr {
            float: right !important;
        }
        .black_overlay{ 
            display: none; 
            position: absolute; 
            top: 0%; 
            left: 0%; 
            width: 100%; 
            height: 100%; 
            background-color: black; 
            z-index:1001; 
            -moz-opacity: 0.8; 
            opacity:.80; 
            filter: alpha(opacity=88); 
        } 
        .white_content { 
           display: none;  
            position: absolute; 
            top: 25%; 
            left: 25%; 
            width: 55%; 
            height: 55%; 
            padding: 20px; 
            border: 10px solid #3d84e6; 
            background-color: white; 
            z-index:1002; 
            overflow: auto; 
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
    <script type="application/javascript" src="scripts/jquery-3.1.1.js"></script>
</head>
<body background="images/img1.jpg">
<div class="word_box">
    <div class="word_title">
        <div class="title_img"><img src="images/img3.jpg"></div>
        <div class="title_btn">
            <input type="button" class="btn btn-word" value="返回">
        </div>
    </div>
    <div class="word_tip">
        <div class="word_h2">四级听力 第1课</div>
        <div class="word_num">第一个/共24个</div>
    </div>
   
        <div class="word_main">
            <div class="word_main_thead">
                <div class="word_main_list_l">
                    听力
                </div>
                <div class="word_main_list_v">
                    音频
                </div>
                <div class="word_main_list_E">
                    听力原文
                </div>
                <div class="word_main_list_C">
                    听力译文
                </div>
            </div>
            
             <c:forEach items="${hearingCustomList}"  var="hearingCustom">
               <ul class="word_main_list" >
                <li>
                    <div class="word_main_list_l">
                            <span title="unit" style="display: inline;">
                                <strong>${hearingCustom.hearingtitle}</strong>
                            </span>
                    </div>
                    <div class="word_main_list_v">
                        <audio controls="controls">
                            <source src="/video/${hearingCustom.hearingaudio}" type="audio/mp3" />
                            Your browser does not support this audio format.
                        </audio>
                    </div>
                    <div class="word_main_list_E">
                   
          <a href = "JavaScript:void(0)" onclick = "document.getElementById('light${hearingCustom.hearingId}').style.display='block';document.getElementById('fade').style.display='block'">   查看</a> 
                      
                    </div>
                    <div class="word_main_list_C">
                         
                                   <a href = "JavaScript:void(0)" onclick = "document.getElementById('translate${hearingCustom.hearingId}').style.display='block';document.getElementById('fade').style.display='block'">   查看</a>         
                   
                    </div>
                </li>
            </ul>
            
               
              <div id="light${hearingCustom.hearingId}" class="white_content">
              
   原文：  
                                <strong>${hearingCustom.hearingintro}</strong>
                
        这是一个层窗口示例程序. 
<a href = "javascript:void(0)" onclick = "document.getElementById('light${hearingCustom.hearingId}').style.display='none';document.getElementById('fade').style.display='none'">点这里关闭本窗口</a></div> 

        <div id="fade" class="black_overlay"></div>
        
         
          <div id="translate${hearingCustom.hearingId}" class="white_content">听力译文${hearingCustom.hearingintro}
<a href = "javascript:void(0)" onclick = "document.getElementById('translate${hearingCustom.hearingId}').style.display='none';document.getElementById('fade').style.display='none'">点这里关闭本窗口</a></div> 
        <div id="fade" class="black_overlay"></div> 
  
     </c:forEach>     
            
            
            
            <div class="word_list_page_num">
                <span class="word_list_page_num_hover" style="cursor: pointer;">1</span>
                <span style="cursor: pointer">2</span>
                <span style="cursor: pointer">3</span>
            </div>

            <div class="word_footer">
                
                </div>
                <div class="fr">
                 
                </div>
            </div>
   
 </div>

      
</body>
</html>