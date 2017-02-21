<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>我的生词本</title>
    <link rel="stylesheet" href="dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="dist/css/bootstrap-theme.css" media="screen">
    <script type="text/javascript" src="dist/js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="dist/js/bootstrap.min.js"></script>

    <style type="text/css">
        * {
            font-family: "Microsoft YaHei UI";
        }
        ul li {
            list-style: none;
            border: none;
            outline: 0 none;
            outline-width: 0;
        }
        p {
            line-height: 20px;
        }

        .img-container img{
            width: 200px;
            margin: 10px;
        }
        .list-container {
            margin: 0 auto;
            width: 960px;
            padding-top: 20px;
        }
        .list-head {
            position: relative;
            margin-top: 10px;
        }
        .position a:hover{
            text-decoration: none;
        }
        .list-head h1 {
            margin: 0px;
            padding: 0px;
            display: block;
            font-size: 2em;
            -webkit-margin-before: 0.67em;
            -webkit-margin-after: 0.67em;
            -webkit-margin-start: 0px;
            -webkit-margin-end: 0px;
            font-weight: bold;
        }
        .list-head h1.position {
            padding-top: 5px;
            color: #a4aab1;
            font-size: 14px;
            font-weight: normal;
        }
        .list-head h1.position span.current {
            color: #428bca;
        }

        .list-head ul.list-option.mean {
            right: 280px;
            top: 5px;
        }
        .list-head ul.list-option.sort {
            right: 110px;
            top: 5px;
        }
        .list-head ul.list-option {
            position: absolute;
            font-size: 0;
        }
        .list-head ul.list-option li {
            display: inline-block;
            width: 80px;
            height: 30px;
            line-height: 30px;
            border: 1px solid #e8ecef;
            vertical-align: middle;
            font-size: 12px;
            text-align: center;
            cursor: pointer;
        }
        .list-head ul.list-option li.current {
            background: #e8ecef;
            color: #b8c1ca;
        }
        .list-head a.w-entry {
            position: absolute;
            right: 0;
            top: 5px;
            display: inline-block;
            width: 100px;
            height: 30px;
            line-height: 30px;
            background: #3d84e6;
            vertical-align: middle;
            font-size: 14px;
            color: #fff;
            text-align: center;
            border-radius: 2px;
        }
        .list-head a.w-entry:hover {
            text-decoration: none;
            background: #3C7BDB;
        }

        .list-body {
            margin-top: 30px;
        }
        .list-body ul.list {
            width: 980px;
            padding: 0;
            margin-left: -10px;
        }
        .list-body ul.list li.item {
            float: left;
            position: relative;
            width: 470px;
            height: 100px;
            padding: 15px;
            background: #f2f4f5;
            margin: 0 10px 10px;
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
            -ms-border-radius: 5px;
            border-radius: 5px;
        }
        .list-body ul.list .word {
            font-family: Arial, sans-serif, "Microsoft YaHei UI", simhei;
            font-size: 22px;
            color: #3c4855;
        }
        .list-body ul.list .word-speak {
            margin-top: -5px;
            font-size: 10px;
            color: #9fa6ad;
        }
        i.speak-step {
            display: inline-block;
            width: 20px;
            height: 16px;
            margin-left: 6px;
            margin-right: 15px;
            cursor: pointer;
            background: url(http://cdn.iciba.com/web/img/info_icons.png) no-repeat;
            background-position: -1px -27px;
            background-size: 105px 92px;
            vertical-align: middle;
        }
        .list-body ul.list .word-mean {
            margin-top: 5px;
            font-size: 12px;
            color: #6f7882;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
        }
        .list-body ul.list i.word-rm {
            position: absolute;
            right: 15px;
            top: 15px;
            display: inline-block;
            width: 16px;
            height: 16px;
            cursor: pointer;
            background: url(http://cdn.iciba.com/web/img/words_list_icons.png) no-repeat;
            background-position: 0 0;
            background-size: 100px 109px;
            vertical-align: middle;
        }

        .list-pager {
            margin-top: 30px;
        }
        .list-pager ul{
            overflow: hidden;
        }
        .list-pager ul li {
            float: left;
        }
        .list-pager ul li span {
            display: inline-block;
            padding: 0 10px;
            height: 30px;
            line-height: 30px;
            margin-right: 5px;
            text-align: center;
            font-size: 15px;
            color: #9fa6ad;
            vertical-align: middle;
            -webkit-border-radius: 2px;
            -moz-border-radius: 2px;
            -ms-border-radius: 2px;
            border-radius: 2px;
        }
        .list-pager ul li.active span.current {
            color: #fff;
            background: #3d84e8;
        }
        .list-pager ul li.active span {
            display: inline-block;
            padding: 0 10px;
            height: 30px;
            line-height: 30px;
            margin-right: 5px;
            text-align: center;
            font-size: 15px;
            color: #9fa6ad;
            vertical-align: middle;
            -webkit-border-radius: 2px;
            -moz-border-radius: 2px;
            -ms-border-radius: 2px;
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
    <div class="container" style="border-bottom: 1px solid #dfdfdf;">
        <div class="img-container">
            <img src="images/user_word_list.jpg">
        </div>
    </div>
    <div class="container" style="border-bottom: 1px solid #dfdfdf;">
        <div class="list-container" >
            <div class="list-head">
                <h1 class="position">
                    <a href="findUserWordbooksList">生词本</a> >
                    <span class="current">我的生词本</span>
                </h1>
                <ul class="list-option mean">
                    <li data-flg="1" class="current" id="show-mean">显示释义</li>
                    <li data-flg="2" class="" id="hide-mean">不显示释义</li>
                </ul>
                <ul class="list-option sort">
                    <li data-flg="1" class="current" id="time-sort">时间排序</li>
                    <li data-flg="2" class="" id="letter-sort">字母排序</li>
                </ul>
                <a href="../words/wordIndex.html" target="_blank" class="w-entry">背单词</a>
            </div>
            <div class="list-body clearfix">
                <ul class="list clearfix">
                    <li class="item">
                        <p class="word">hello</p>
                        <p class="word-speak">
                            <span>美 [həˈloʊ]</span><i class="speak-step" onmouseover="displayAudio('http://res.iciba.com/resource/amp3/1/0/5d/41/5d41402abc4b2a76b9719d911017c592.mp3')"></i>
                            <span>英 [hə'ləʊ]</span></p>
                        <p class="word-mean" style="display: block;">int. 哈喽，喂;你好，您好;表示问候;打招呼; n. “喂”的招呼声或问候声; vi. 喊“喂”; </p>
                        <i class="word-rm"></i>
                        <div class="alert" style="display: none;">
                            <p>确认要删除单词吗？</p>
                            <a href="javascript:void(0);" class="cancel">取消</a>
                            <a href="javascript:void(0);" class="sure" data-word="project">确定</a>
                            <i class="triangle"></i>
                        </div>
                    </li>
                    <li class="item">
                        <p class="word">hello</p>
                        <p class="word-speak">
                            <span>美 [həˈloʊ]</span><i class="speak-step" onmouseover="displayAudio('http://res.iciba.com/resource/amp3/1/0/5d/41/5d41402abc4b2a76b9719d911017c592.mp3')"></i>
                            <span>英 [hə'ləʊ]</span></p>
                        <p class="word-mean" style="display: block;">int. 哈喽，喂;你好，您好;表示问候;打招呼; n. “喂”的招呼声或问候声; vi. 喊“喂”; </p>
                        <i class="word-rm"></i>
                        <div class="alert" style="display: none;">
                            <p>确认要删除单词吗？</p>
                            <a href="javascript:void(0);" class="cancel">取消</a>
                            <a href="javascript:void(0);" class="sure" data-word="project">确定</a>
                            <i class="triangle"></i>
                        </div>
                    </li>
                    <li class="item">
                        <p class="word">hello</p>
                        <p class="word-speak">
                            <span>美 [həˈloʊ]</span><i class="speak-step" onmouseover="displayAudio('http://res.iciba.com/resource/amp3/1/0/5d/41/5d41402abc4b2a76b9719d911017c592.mp3')"></i>
                            <span>英 [hə'ləʊ]</span></p>
                        <p class="word-mean" style="display: block;">int. 哈喽，喂;你好，您好;表示问候;打招呼; n. “喂”的招呼声或问候声; vi. 喊“喂”; </p>
                        <i class="word-rm"></i>
                        <div class="alert" style="display: none;">
                            <p>确认要删除单词吗？</p>
                            <a href="javascript:void(0);" class="cancel">取消</a>
                            <a href="javascript:void(0);" class="sure" data-word="project">确定</a>
                            <i class="triangle"></i>
                        </div>
                    </li>
                    <li class="item">
                        <p class="word">hello</p>
                        <p class="word-speak">
                            <span>美 [həˈloʊ]</span><i class="speak-step" onmouseover="displayAudio('http://res.iciba.com/resource/amp3/1/0/5d/41/5d41402abc4b2a76b9719d911017c592.mp3')"></i>
                            <span>英 [hə'ləʊ]</span></p>
                        <p class="word-mean" style="display: block;">int. 哈喽，喂;你好，您好;表示问候;打招呼; n. “喂”的招呼声或问候声; vi. 喊“喂”; </p>
                        <i class="word-rm"></i>
                        <div class="alert" style="display: none;">
                            <p>确认要删除单词吗？</p>
                            <a href="javascript:void(0);" class="cancel">取消</a>
                            <a href="javascript:void(0);" class="sure" data-word="project">确定</a>
                            <i class="triangle"></i>
                        </div>
                    </li>
                    <li class="item">
                        <p class="word">hello</p>
                        <p class="word-speak">
                            <span>美 [həˈloʊ]</span><i class="speak-step" onmouseover="displayAudio('http://res.iciba.com/resource/amp3/1/0/5d/41/5d41402abc4b2a76b9719d911017c592.mp3')"></i>
                            <span>英 [hə'ləʊ]</span></p>
                        <p class="word-mean" style="display: block;">int. 哈喽，喂;你好，您好;表示问候;打招呼; n. “喂”的招呼声或问候声; vi. 喊“喂”; </p>
                        <i class="word-rm"></i>
                        <div class="alert" style="display: none;">
                            <p>确认要删除单词吗？</p>
                            <a href="javascript:void(0);" class="cancel">取消</a>
                            <a href="javascript:void(0);" class="sure" data-word="project">确定</a>
                            <i class="triangle"></i>
                        </div>
                    </li>
                    <li class="item">
                        <p class="word">hello</p>
                        <p class="word-speak">
                            <span>美 [həˈloʊ]</span><i class="speak-step" onmouseover="displayAudio('http://res.iciba.com/resource/amp3/1/0/5d/41/5d41402abc4b2a76b9719d911017c592.mp3')"></i>
                            <span>英 [hə'ləʊ]</span></p>
                        <p class="word-mean" style="display: block;">int. 哈喽，喂;你好，您好;表示问候;打招呼; n. “喂”的招呼声或问候声; vi. 喊“喂”; </p>
                        <i class="word-rm"></i>
                        <div class="alert" style="display: none;">
                            <p>确认要删除单词吗？</p>
                            <a href="javascript:void(0);" class="cancel">取消</a>
                            <a href="javascript:void(0);" class="sure" data-word="project">确定</a>
                            <i class="triangle"></i>
                        </div>
                    </li>
                    <li class="item">
                        <p class="word">hello</p>
                        <p class="word-speak">
                            <span>美 [həˈloʊ]</span><i class="speak-step" onmouseover="displayAudio('http://res.iciba.com/resource/amp3/1/0/5d/41/5d41402abc4b2a76b9719d911017c592.mp3')"></i>
                            <span>英 [hə'ləʊ]</span></p>
                        <p class="word-mean" style="display: block;">int. 哈喽，喂;你好，您好;表示问候;打招呼; n. “喂”的招呼声或问候声; vi. 喊“喂”; </p>
                        <i class="word-rm"></i>
                        <div class="alert" style="display: none;">
                            <p>确认要删除单词吗？</p>
                            <a href="javascript:void(0);" class="cancel">取消</a>
                            <a href="javascript:void(0);" class="sure" data-word="project">确定</a>
                            <i class="triangle"></i>
                        </div>
                    </li>
                    <li class="item">
                        <p class="word">hello</p>
                        <p class="word-speak">
                            <span>美 [həˈloʊ]</span><i class="speak-step" onmouseover="displayAudio('http://res.iciba.com/resource/amp3/1/0/5d/41/5d41402abc4b2a76b9719d911017c592.mp3')"></i>
                            <span>英 [hə'ləʊ]</span></p>
                        <p class="word-mean" style="display: block;">int. 哈喽，喂;你好，您好;表示问候;打招呼; n. “喂”的招呼声或问候声; vi. 喊“喂”; </p>
                        <i class="word-rm"></i>
                        <div class="alert" style="display: none;">
                            <p>确认要删除单词吗？</p>
                            <a href="javascript:void(0);" class="cancel">取消</a>
                            <a href="javascript:void(0);" class="sure" data-word="project">确定</a>
                            <i class="triangle"></i>
                        </div>
                    </li>
                    <li class="item">
                        <p class="word">hello</p>
                        <p class="word-speak">
                            <span>美 [həˈloʊ]</span><i class="speak-step" onmouseover="displayAudio('http://res.iciba.com/resource/amp3/1/0/5d/41/5d41402abc4b2a76b9719d911017c592.mp3')"></i>
                            <span>英 [hə'ləʊ]</span></p>
                        <p class="word-mean" style="display: block;">int. 哈喽，喂;你好，您好;表示问候;打招呼; n. “喂”的招呼声或问候声; vi. 喊“喂”; </p>
                        <i class="word-rm"></i>
                        <div class="alert" style="display: none;">
                            <p>确认要删除单词吗？</p>
                            <a href="javascript:void(0);" class="cancel">取消</a>
                            <a href="javascript:void(0);" class="sure" data-word="project">确定</a>
                            <i class="triangle"></i>
                        </div>
                    </li>
                    <li class="item">
                        <p class="word">hello</p>
                        <p class="word-speak">
                            <span>美 [həˈloʊ]</span><i class="speak-step" onmouseover="displayAudio('http://res.iciba.com/resource/amp3/1/0/5d/41/5d41402abc4b2a76b9719d911017c592.mp3')"></i>
                            <span>英 [hə'ləʊ]</span></p>
                        <p class="word-mean" style="display: block;">int. 哈喽，喂;你好，您好;表示问候;打招呼; n. “喂”的招呼声或问候声; vi. 喊“喂”; </p>
                        <i class="word-rm"></i>
                        <div class="alert" style="display: none;">
                            <p>确认要删除单词吗？</p>
                            <a href="javascript:void(0);" class="cancel">取消</a>
                            <a href="javascript:void(0);" class="sure" data-word="project">确定</a>
                            <i class="triangle"></i>
                        </div>
                    </li>
                    <li class="item">
                        <p class="word">hello</p>
                        <p class="word-speak">
                            <span>美 [həˈloʊ]</span><i class="speak-step" onmouseover="displayAudio('http://res.iciba.com/resource/amp3/1/0/5d/41/5d41402abc4b2a76b9719d911017c592.mp3')"></i>
                            <span>英 [hə'ləʊ]</span></p>
                        <p class="word-mean" style="display: block;">int. 哈喽，喂;你好，您好;表示问候;打招呼; n. “喂”的招呼声或问候声; vi. 喊“喂”; </p>
                        <i class="word-rm"></i>
                        <div class="alert" style="display: none;">
                            <p>确认要删除单词吗？</p>
                            <a href="javascript:void(0);" class="cancel">取消</a>
                            <a href="javascript:void(0);" class="sure" data-word="project">确定</a>
                            <i class="triangle"></i>
                        </div>
                    </li>
                    <li class="item">
                        <p class="word">hello</p>
                        <p class="word-speak">
                            <span>美 [həˈloʊ]</span><i class="speak-step" onmouseover="displayAudio('http://res.iciba.com/resource/amp3/1/0/5d/41/5d41402abc4b2a76b9719d911017c592.mp3')"></i>
                            <span>英 [hə'ləʊ]</span></p>
                        <p class="word-mean" style="display: block;">int. 哈喽，喂;你好，您好;表示问候;打招呼; n. “喂”的招呼声或问候声; vi. 喊“喂”; </p>
                        <i class="word-rm"></i>
                        <div class="alert" style="display: none;">
                            <p>确认要删除单词吗？</p>
                            <a href="javascript:void(0);" class="cancel">取消</a>
                            <a href="javascript:void(0);" class="sure" data-word="project">确定</a>
                            <i class="triangle"></i>
                        </div>
                    </li>
                    <li class="item">
                        <p class="word">hello</p>
                        <p class="word-speak">
                            <span>美 [həˈloʊ]</span><i class="speak-step" onmouseover="displayAudio('http://res.iciba.com/resource/amp3/1/0/5d/41/5d41402abc4b2a76b9719d911017c592.mp3')"></i>
                            <span>英 [hə'ləʊ]</span></p>
                        <p class="word-mean" style="display: block;">int. 哈喽，喂;你好，您好;表示问候;打招呼; n. “喂”的招呼声或问候声; vi. 喊“喂”; </p>
                        <i class="word-rm"></i>
                        <div class="alert" style="display: none;">
                            <p>确认要删除单词吗？</p>
                            <a href="javascript:void(0);" class="cancel">取消</a>
                            <a href="javascript:void(0);" class="sure" data-word="project">确定</a>
                            <i class="triangle"></i>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="list-pager light-theme simple-pagination" id="pagination">
                <ul>
                    <li class="disabled">
                        <span class="current prev">上一页</span>
                    </li>
                    <li class="active">
                        <span class="current">1</span>
                    </li>
                    <li class="disabled">
                        <span class="current next">下一页</span>
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <div id="foot">
        <div class="mod-footer">
            <div class="copy-box">Copyright &copy; 2017. Entries Online all rights reserved.</div>
        </div>
    </div>

    <script>
      $(document).ready(function () {
        $("#show-mean").click(function () {
          $('ul.list > .item > .word-mean').show();
          $('#hide-mean').removeClass('current');
          $(this).addClass('current');
        });
        $('#hide-mean').click(function (){
          $('ul.list > .item > .word-mean').hide();
          $('#show-mean').removeClass('current');
          $(this).addClass('current');
        });
        $('#time-sort').click(function () {
//          此处编写对应的分类函数
          $('#letter-sort').removeClass('current');
          $(this).addClass('current');
        })
        $('#letter-sort').click(function () {
//          此处编写对应的分类函数
          $('#time-sort').removeClass('current');
          $(this).addClass('current');
        })
      });
    </script>
    <script>
      $('#pagination').pagination({
        pages: totalPage,
        currentPage: curPage,
        hrefTextPrefix: "#",
        onPageClick: function(pagenum, event){
          var showtype = $(".list-option.mean li.current").attr("data-flg");
          var sorttype = $(".list-option.sort li.current").attr("data-flg");
          window.location.href = "/?action=word&id="+bookid+"&name="+encodeURIComponent(bookname)+"&sort="+sorttype+"&show_type="+showtype+"&page="+pagenum;
        }
      });
    </script>
</body>
</html>