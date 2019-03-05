<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:choose>
		<c:when test="${param.menu == 'basic' }">
			<li class="selected"><li><a href="${pageContext.request.contextPath}/blog/blog-admin-basic">기본설정</a></li>
			<li><a href="${pageContext.request.contextPath}/blog/blog-admin-category">카테고리</a></li>
			<li><a href="${pageContext.request.contextPath}/blog/blog-admin-write">글작성</a></li>
		</c:when>
		<c:when test="${param.menu == 'category' }">
			<li><a href="${pageContext.request.contextPath}/blog/blog-admin-basic">기본설정</a></li>
			<li class="selected"><a href="${pageContext.request.contextPath}/blog/blog-admin-category">카테고리</a></li>
			<li><a href="${pageContext.request.contextPath}/blog/blog-admin-write">글작성</a></li>
		</c:when>
		<c:when test="${param.menu == 'write' }">
			<li><a href="${pageContext.request.contextPath}/blog/blog-admin-basic">기본설정</a></li>
			<li><a href="${pageContext.request.contextPath}/blog/blog-admin-category">카테고리</a></li>
			<li class="selected"><a href="${pageContext.request.contextPath}/blog/blog-admin-write">글작성</a></li>
		</c:when>
		<c:otherwise>
			<li><a href="${pageContext.request.contextPath}/blog/blog-admin-basic">기본설정</a></li>
			<li><a href="${pageContext.request.contextPath}/blog/blog-admin-category">카테고리</a></li>
			<li><a href="${pageContext.request.contextPath}/blog/blog-admin-write">글작성</a></li>
		</c:otherwise>
	</c:choose>
</body>
</html>