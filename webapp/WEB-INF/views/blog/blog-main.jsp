<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JBlog</title>
<Link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/jblog.css">
</head>
<body>
	<div id="container">
		<div id="header">
			<h1>Spring 이야기</h1>
			<ul>
				<c:import url="/WEB-INF/views/includes/header.jsp"/>
			</ul>
		</div>
		<div id="wrapper">
			<div id="content">
				<div class="blog-content">
					<h4>포스트이름</h4>
					<p>
						여긴 포스트
					<p>
				</div>
				<ul class="blog-list">
					<p> 제목 등록일 리스트</p>
					<li><a href="">Spring Camp 2016 참여기</a> <span>2015/05/02</span>	</li>
					<li><a href="">Spring Boot 사용법 정리</a> <span>2015/05/02</span>	</li>
					<li><a href="">Spring Security 설정법</a> <span>2015/05/02</span>	</li>
					<li><a href="">JPA + Hinernate</a> <span>2015/05/02</span>	</li>
					<li><a href="">AOP 활용하기 - DAO 실행시간 측정하기</a> <span>2015/05/02</span>	</li>
				</ul>
			</div>
		</div>

		<div id="extra">
			<div class="blog-logo">
				<img src="${pageContext.request.contextPath}/assets/images/spring-logo.jpg">
			</div>
		</div>

		<div id="navigation">
			<h2>카테고리</h2>
			<ul>
				<li><a href="">닥치고 스프링</a></li>
				<li><a href="">스프링 스터디</a></li>
				<li><a href="">스프링 프로젝트</a></li>
				<li><a href="">기타</a></li>
			</ul>
		</div>
		
		<div id="footer">
			<p>
				<strong>Spring 이야기</strong> is powered by JBlog (c)2016
			</p>
		</div>
	</div>
</body>
</html>