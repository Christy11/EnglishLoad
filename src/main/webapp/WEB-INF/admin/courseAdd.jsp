<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="baseurl" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>courseAdd</title>
    <link rel="stylesheet" type="text/css" href="styles/basic.css"/>
</head>
<body>
<jsp:include page="adminheader.jsp"></jsp:include>

        <div class="operation">课程添加：
        </div>
        <div class="ft">
            <form method="post" action="${pageContext.request.contextPath }/uploadCourse" enctype="multipart/form-data">
                <table>
                    <tr>
                        <td class="lable">课程名</td>
                        <td><input type="text" name="coursename" value="${course.coursename }" id="class"/></td>
                    </tr>
                    <tr>
                        <td class="lable">课程开始时间</td>
                        <td><input type="text" name="" id=""></td>
                    </tr>
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
                        <td><input type="text" name="teacher" value="${course.teacher }" id="classTeacher"/></td>
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
                        <td><textarea name="courseintro" value="${course.courseintro }" rows="4" cols="30"></textarea></td>
                    </tr>
                    <tr>
                        <td class="lable">课程点击率</td>
                        <td><input type="text" readonly="readonly" name="clickrate" value="0"/><br/></td>
                    </tr>
                    <tr>
                        <td class="lable">课程上传者</td>
                        <td><input type="text" name="shangchuanzhe" id="shangchuanzhe"/></td>
                    </tr>
                    <tr>
                        <td class="lable">课时</td>
                        <td><input type="text" name="period" value="${course.period}" id="keshi"/></td>
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