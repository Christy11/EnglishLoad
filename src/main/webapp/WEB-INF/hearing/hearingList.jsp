<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   <c:set var="baseurl" value="${pageContext.request.contextPath}/"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
     <c:forEach items="${hearingCustomList}"  var="hearingCustom">
      <hr style="height: 1px; border:none;border-top:1px solid #eee; "/>
      <div class="row"><a href="${baseurl}hearingPlay/${hearingCustom.hearingId}">
        <div class="newsBox">
          <div style = "margin-left: 15px; margin-top: 20px;">
            <p class="title" style="margin-left: 15px;">
          <h5>标题：${hearingCustom.hearingtitle}</h5>
            </p>
            <p class="title" style="margin-left: 15px;">
            <h5>音频：${hearingCustom.hearingaudio} </h5>
            </p>
          </div>
        </div></a>
      </div>
  </c:forEach>
  	<div class="row" style="margin: 0 5px;">
      <div class="clearfix">
        <p style="font-size: 16px;margin-top:10px;" class="pull-left" display='inline-block'>学习目标：</p>
        <ul class="nav navbar-nav">
          <li rel="0"><a href="${baseurl}findHearingList" class="btn">全部</a></li>
         <li rel="1"><a href="${baseurl}findHearingByGrade?gradename=${1}">四级</a></li>
          <li rel="2"><a href="${baseurl}findHearingByGrade?gradename=${2}">六级</a></li>
          <li rel="3"><a href="${baseurl}findHearingByGrade?gradename=${3}">雅思</a></li>
          <li rel="4"><a href="${baseurl}findHearingByGrade?gradename=${4}">托福</a></li>
          <li rel="5"><a href="${baseurl}findHearingByGrade?gradename=${5}">GRE</a></li>  
          <li rel="6"><a href="${baseurl}findHearingByGrade?gradename=${6}">其他</a></li>   
        </ul>
      </div>
    </div>  
</body>
</html>