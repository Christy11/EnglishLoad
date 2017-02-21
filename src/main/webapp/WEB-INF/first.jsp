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
登录成功
<a  href= '${baseurl}logout.action'>退出登录</a>
<p/>
欢迎当前用户：${activeUser.username}
当前用户id：${activeUser.userid}

<div>
			<c:if test="${activeUser.menus!=null }">
				<ul>
				<c:forEach items="${activeUser.menus }" var="menu">
					<li><div>
						<a title="${menu.name }" ref="1_1" href="#"
							rel="${baseurl }/${menu.url }" icon="icon-log"><span
							class="icon icon-log">&nbsp;</span><span class="nav"><a href='${baseurl}${menu.url }'>${menu.name }</a></span></a>
					</div></li>
				</c:forEach>
				</ul>
			</c:if>
			
			</div>
			<a  href= '${baseurl}userList'>用户管理</a>
</body>
</html>