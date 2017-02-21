<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="baseurl" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login </title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link type="text/css" rel="stylesheet" href="styles/login.css"/>
</head>
<body>
<div class="login-form">
    <img src="">
    <div class="head-info">
        <label class="lbl-1"> </label>
        <label class="lbl-2"> </label>
        <label class="lbl-3"> </label>
    </div>
    <div class="clear"></div>
    <div class="avtar">
        <img src="images/admin_login/avtar.png"/>
    </div>
    <form action="${baseurl}/login.action" method="post">
        <input type="text" name="username" id="username" class="text" value="用户名" >
        <div class="key">
            <input type="password" name="password" id="password" value="密    码"   >        </div>
        <div class="signin">
            <input type="submit" value="登录">
        </div>
    </form>
</div>
</body>
</html>