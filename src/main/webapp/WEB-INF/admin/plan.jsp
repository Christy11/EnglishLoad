<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="baseurl" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>plan</title>
</head>
<body>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>index</title>
    <link rel="stylesheet" type="text/css" href="../../styles/basic.css"/>
</head>
<body>
<jsp:include page="adminheader.jsp"></jsp:include>

        <div id="find">
            <form>
                <table>
                    <tr>
                        <td><input type="text" name="search" id="search"/></td>
                        <td><input type="submit" value="查询" class="button"/></td>
                    </tr>
                </table>
            </form>
        </div>
        <div class="operation">用户：陶健
        </div>
        <div>
            <table class="dt" border="0" cellspacing="1">
                <tr>
                    <th>序号</th>
                    <th>课程名</th>
                    <th>考试等级</th>
                    <th>类别</th>
                    <th>进度</th>
                    <th>删除</th>
                </tr>
                <tr>
                    <td>1</td>
                    <td>30天入门</td>
                    <td>GRE</td>
                    <td>听力</td>
                    <td>80%</td>
                    <td>删除</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>打破常规</td>
                    <td>GRE</td>
                    <td>听力</td>
                    <td>88%</td>
                    <td>删除</td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>30天入门</td>
                    <td>GRE</td>
                    <td>听力</td>
                    <td>80%</td>
                    <td>删除</td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>打破常规</td>
                    <td>GRE</td>
                    <td>听力</td>
                    <td>88%</td>
                    <td>删除</td>
                </tr>
                <tr>
                    <td>5</td>
                    <td>打破常规</td>
                    <td>GRE</td>
                    <td>听力</td>
                    <td>88%</td>
                    <td>删除</td>
                </tr>
                <tr>
                    <td>6</td>
                    <td>30天入门</td>
                    <td>GRE</td>
                    <td>听力</td>
                    <td>80%</td>
                    <td>删除</td>
                </tr>
                <tr>
                    <td>7</td>
                    <td>打破常规</td>
                    <td>GRE</td>
                    <td>听力</td>
                    <td>88%</td>
                    <td>删除</td>
                </tr>
                <tr>
                    <td>8</td>
                    <td>打破常规</td>
                    <td>GRE</td>
                    <td>听力</td>
                    <td>88%</td>
                    <td>删除</td>
                </tr>
                <tr>
                    <td>9</td>
                    <td>30天入门</td>
                    <td>GRE</td>
                    <td>听力</td>
                    <td>80%</td>
                    <td>删除</td>
                </tr>
                <tr>
                    <td>10</td>
                    <td>打破常规</td>
                    <td>GRE</td>
                    <td>听力</td>
                    <td>88%</td>
                    <td>删除</td>
                </tr>
            </table>
            <div class="pagenav">
                <ul contenteditable="true">
                    <li class="pageLeft">
                        <a href="#" >上一页</a></li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li class="pageRight">
                        <a href="#">下一页</a></li>
                </ul>
            </div>
        </div>

        <div class="operation">添加学习计划课程：
        </div>
        <div class="ft">
            <form method="post" action="${webroot}/sadmin/manage.do?action=add">
                <table>
                    <tr>
                        <td class="lable">考试等级</td>
                        <td><select name="rank" class="box">
                                <option value="CET4">CET4</option>
                                <option value="CET6">CET6</option>
                                <option value="GRE">GRE</option>
                                <option value="IELTS">雅思</option>
                                <option value="TOEFL">托福</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td class="lable">类别</td>
                        <td><select name="category" class="box">
                            <option value="speak">口语</option>
                            <option value="listen">听力</option>
                            <option value="read">阅读</option>
                            <option value="article">作文</option>
                            <option value="else">其他</option>
                        </select>
                        </td>
                    </tr>
                    <tr>
                        <td class="lable">课程名</td>
                        <td><input type="text" name="class" id="class"/></td>
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
    <div class="clearf"></div>
</div>
</body>
</html>
</body>
</html>