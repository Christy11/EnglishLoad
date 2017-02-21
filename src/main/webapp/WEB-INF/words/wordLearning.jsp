<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
  <%@ page import="java.util.*"%>  
<%@ page import="java.text.*"%>  
<c:set var="baseurl" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
     <meta charset="UTF-8">
    <title>单词学习</title>
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="../dist/css/bootstrap-theme.css" media="screen">
    <link rel="stylesheet" href="../dist/css/style.css">
    <link rel="stylesheet" href="../dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../dist/css/font-awesome.min.css">
   <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js" ></script>
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
            height: 390px;
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

        .word_main_list_w {
            display: inline-block;
            overflow: hidden;
            margin-left: 10px;
            width: 160px;

        }
        .word_main_list_p {
            display: inline-block;
            overflow: hidden;
            width: 160px;
            color: #888;
        }
        .word_main_list_e {
            display: inline-block;
            overflow: hidden;
            color: #666;
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
        	top:225px;
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
            top: 283px;
            height: 49px;
            background: #f4f4f4;
        }

        .footer_add {
            display: inline-block;
            margin: 8px 45px 8px ;
        }

        .footer_card {
            display: inline-block;
            line-height: 20px;
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
  
    
</head>
<body background="../images/img1.jpg">
    <div class="word_box">
        <div class="word_title">
            <div class="title_img"><img src="../images/img2.jpg"></div>
            <div class="title_btn">
            <a href="${baseurl}/randomWord">
                <input type="button" class="btn btn-word" value="返回">
            </a>
            </div>
        </div>
        <div class="word_tip">
            <div class="word_h2">四级必备词汇 第1课</div>
            <div class="word_num">生词1-8个/共24词</div>
        </div>
        <form action="?action=card" method="post" id="word_form">
            <input type="hidden" name="class_id" value="11">
            <input type="hidden" name="course_id" value="1">
            <input type="hidden" name="nologin" value="0">
            <div class="word_main">
                <div class="word_main_thead">
                    <div class="word_main_list_w">
                        单词
                    </div>
                    <div class="word_main_list_p">
                        音标
                    </div>
                    <div class="word_main_list_e">
                        释义
                    </div>
                </div>
                 <c:forEach items="${wordsCustomList}"  var="wordsCustom"> 
                <ul class="word_main_list" p_id="1">
                
                    <li>
                       <input type="checkbox" name="checkbox1" value="${wordsCustom.wordId}">
                      <div class="word_main_list_w">
                            <span title="comment" style="display: inline;">
                                <strong>${wordsCustom.wordname}</strong>
                            </span>
                        </div>
                        <div class="word_main_list_p">
                            <strong lang="EN-US" xml:lang="EN-US">
                                ${wordsCustom.properity}
                            </strong>
                            <a title="发音" href="javascript:void(0)" id="aaa.mp3" onmouseover="asplay_top(this.id);" class="icon_s"></a>
                        </div>
                        <div class="word_main_list_e">
                           <span title="n. 评论，意见；体现，写照" style="display: block;">
                               ${wordsCustom.explanation}
                           </span>
                        </div>
                          </input> 
				    </li>
				                         
                </ul>
                </c:forEach>
                <div class="word_list_page_num">
                
                <a href="${baseurl}/wordstudy/${gradeId}?page=${page.firstPage}">
                       <span class="word_list_page_num_hover" style="cursor: pointer;">首页</span></a>
                    <c:choose>
						<c:when test="${page.pageNum eq 1}">
							<a href="javascript:volid(0);" >
                              <span class="word_list_page_num_hover"  style="cursor: pointer;">上一页</span></a>
						</c:when>
						<c:otherwise>
							 <a href="${baseurl}/wordstudy/${gradeId}?page=${page.prePage}">
                              <span class="word_list_page_num_hover" style="cursor: pointer;">上一页</span></a>
						</c:otherwise>
					</c:choose>
                    <c:choose>
							<c:when test="${page.pageNum eq page.pages}">
								<a href="javascript:volid(0);">
                                      <span class="word_list_page_num_hover" style="cursor: pointer">下一页</span></a>
							</c:when>
							<c:otherwise>
								<a href="${baseurl}/wordstudy/${gradeId}?page=${page.nextPage}">
                                     <span class="word_list_page_num_hover" style="cursor: pointer">下一页</span></a>
							</c:otherwise>
						</c:choose>
                    
                        <a href="${baseurl}/wordstudy/${gradeId}?page=${page.lastPage}">
                       <span class="word_list_page_num_hover" style="cursor: pointer;">尾页</span></a>
            
                </div>

                <div class="word_footer">
                    <div class="word_footer_scb">
                        <form action="">
							<select name="wordbooks" onchange="select(this.options[this.options.selectedIndex].value)" style="margin-left:30px;margin-right:5px;">
							<c:forEach items="${wordbooksCustomList}"  var="wordbooksCustom">
                                <option id="boxlist" value="${wordbooksCustom.wbookId}">${wordbooksCustom.wname}</option>
                            </c:forEach> 
							</select>	
							<input type="button" onclick="checkbox()" value="加入生词本" class="btn btn-default" style="margin-top:8px;"/>		
                     
                        </form>
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
                    <div class="fr">
                        <a href="${baseurl}/wordsindex?gradeId=${gradeId}" class="btn btn-word footer_card">卡片学习</a>
                    </div>
                </div>
            </div>
        </form>
    </div>
<script type="text/javascript">
var wbookId;
function select(optionvalue){
	wbookId=optionvalue;
}
function checkbox1()
{
	
}
function checkbox()
{
var str=document.getElementsByName("checkbox1");
var objarray=str.length;
var wordId="";
for (i=0;i<objarray;i++)
{
  if(str[i].checked == true)
  {
   wordId+=str[i].value+",";
  }
}
if(wordId == "")
{
  alert("请先选择一个单词～！");
}
else
{
	$.ajax({  
		type : "get" , //提交方式  
       url : "${baseurl}/addWordbooksWords?wbookId="+wbookId+"&wordId="+wordId,//路径  
        data : {  
              
        },//数据，这里使用的是Json格式进行传输 
        dataType: 'json',
        success : function(result) {//返回数据根据结果进行相应的处理  
        	
        }
    });  
	
} 
}
</script>
</body>
</html>