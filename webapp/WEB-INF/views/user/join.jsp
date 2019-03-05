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
<script type = "text/javascript" src ="${pageContext.servletContext.contextPath}/assets/js/jquery/jquery-1.9.0.js"></script>
<script>
$(function(){
	$("#join-form").submit(function(){
		//1. 이름 체크
		if($("#name").val() == ""){
			alert("이름은 필수 입력 항목입니다.");
			$("#name").focus();
			return false;
		}
		
		//2-1. 이메일이 비어 있는 지 확인
		if($("#email").val() == ""){
			alert("이메일은 필수 입력 항목입니다.");
			$("#email").focus();
			return false;
		}
		
		/* //2-2. 이메일 중복체크 유무
		
		if($("#img-checkemail").is(":visible")==false){
			alert("이메일 중복 체크를 해야합니다.");
			return false;
		} */
		
		//3. 비밀번호 확인
		if($("input[type='password']").val() == ""){
			alert("비밀번호는 필수 입력 항목입니다.");
			$("input[type='password']").focus();
			return false;
		}
		
		//4. 약관동의
		if($("#agree-prov").is(":checked") == false){
			alert("약관 동의를 해야 합니다.");
			return false;
		}
		
		return true;
	});
	
	$("#eamil").change(function(){
		$("#btn-checkemail").show();
		$("#img-checkemail").hide();
	});
	
	$("#btn-checkemail").click(function(){
		var email = $("#email").val();
		if(email == ""){
			return;
		}
		
		$.ajax({
			url: "${pageContext.servletContext.contextPath}/api/user",
			//el,jsp넣어도 변환되어 온다. 
			type: "post",
			dataType: "json",
			data: "a=ajax-checkemail&email=" + email,
			success: function(response){
				if(response.exist == true){
					alert("이미 존재하는 이메일입니다. 다른 이메일을 사용해 주세요.");
					$("#email").val("").focus();
					return;
				}
				
				// 사용가능한 이메일
				$("#btn-checkemail").hide();
				$("#img-checkemail").show();
			},
			error: function(xhr, status, e){
				console.error(status + ":" + e);
			}
		});
	});
});
</script>
</head>
<body>
	<div class="center-content">
		<h1 class="logo">JBlog</h1>
		<ul class="menu">
		<c:import url="/WEB-INF/views/includes/navigation.jsp"/>
		</ul>
		<form class="join-form" id="join-form" method="post" action="">
			<label class="block-label" for="name">이름</label>
			<input id="name"name="name" type="text" value="">
			
			<label class="block-label" for="blog-id">아이디</label>
			<input id="id" name="id" type="text"> 
			<input id="btn-checkemail" type="button" value="id 중복체크">
			<img id="img-checkemail" style="display: none;" src="${pageContext.request.contextPath}/assets/images/check.png">

			<label class="block-label" for="password">패스워드</label>
			<input id="password" name="password" type="password" />

			<fieldset>
				<legend>약관동의</legend>
				<input id="agree-prov" type="checkbox" name="agreeProv" value="y">
				<label class="l-float">서비스 약관에 동의합니다.</label>
			</fieldset>

			<input type="submit" value="가입하기">

		</form>
	</div>
</body>
</html>
