<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="baseurl" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<jsp:include page="usersetting_header.jsp"></jsp:include>
   
                <div class="mod-usetting-right">
                    <div class="scan-history">
                        <p class="usetting-right-title clearfix">浏览过的课程</p>
                        <div class="g-flow">
                            <ul class="his-cou-list-ul clearfix">
                            <c:forEach items="${courseList}"  var="course">
                                <li class="his-cou-list-item">
                                    <div class="his-cou-card">
                                        <a href="${baseurl}/courseplay/${course.courseId}?courseId=${course.courseId}" title="点击打开课程"><img src="images/photo-1.jpg"><span class="card-title">${course.coursename }</span></a>
                                    </div>
                                </li>
                               </c:forEach>    
                            </ul>
                        </div>
                    </div>
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