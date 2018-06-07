<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta name="description" content="">
		<meta name="author" content="">
		<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"> -->
		<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css"> -->
		<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script> -->
		
		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<title>Modern Business - Start Bootstrap Template</title>
	
		<!-- Bootstrap core CSS -->
		<link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

		<!-- Custom styles for this template -->
		<link href="resources/vendor/bootstrap/css/modern-business.css" rel="stylesheet">
		
		<!-- Bootstrap core jquery -->
		<script src="resources/vendor/jquery/jquery.min.js"></script>
		<script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	</head>

	<body>
    <!-- Navigation -->
		<nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
			<div class="container" style="font-size:16px">
				<a class="navbar-brand" href="${pageContext.request.contextPath}/">Synergy</a>
					<button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
			   					  <!-- 로그인 -->
					<c:if test="${empty sessionScope.id}"> 
						<form action="${pageContext.request.contextPath}/login" method="post" class="form-inline">
							<div class="form-group">
								<input type="text" class="form-control input-sm" name="id" placeholder="아이디">
							</div>&nbsp; &nbsp;
							<div class="form-group">
								<input type="password" class="form-control input-sm" name="pw" placeholder="비밀번호">
							</div>&nbsp; &nbsp;
							<input type="submit" class="btn btn-default" value="로그인">
						</form>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="text-muted" href="${pageContext.request.contextPath}/idSearch">ID찾기</a>
						&nbsp;&nbsp;&nbsp;&nbsp;<a class="text-muted" href="${pageContext.request.contextPath}/pwSearch">PW찾기</a>
					</c:if>
					<c:if test="${!empty sessionScope.id}">
						<font style="color:white;">${sessionScope.id}님 (${sessionScope.level})</font>
						<a class="nav-link" href="${pageContext.request.contextPath}/logout"><font style="color:gray;">로그아웃</font></a>
					</c:if>
				<div class="collapse navbar-collapse" id="navbarResponsive">
					<ul class="navbar-nav ml-auto">
						<c:if test="${empty sessionScope.id}">
							<li class="nav-item">
								<a class="nav-link" href="${pageContext.request.contextPath}/loginMain">회원가입</a>
							</li>
						</c:if>					
						<c:if test="${!empty sessionScope.id}">		
							<li class="nav-item dropdown">
								<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								마이페이지
								</a>
								<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
								<c:if test="${sessionScope.level eq '관리자'}">	
									<a class="dropdown-item" href="${pageContext.request.contextPath}/adminUpdate">회원수정</a>
									<a class="dropdown-item" href="${pageContext.request.contextPath}/userSelect">회원리스트</a>
								</c:if>
								<c:if test="${sessionScope.level eq '일반회원'}">
									<a class="dropdown-item" href="${pageContext.request.contextPath}/userDetail">회원정보</a>
								</c:if>	
								<c:if test="${sessionScope.level eq '기부단체'}">
									<a class="dropdown-item" href="${pageContext.request.contextPath}/donatorUpdate">회원수정</a>
								</c:if>	
								<a class="dropdown-item" href="${pageContext.request.contextPath}/cashMain">캐쉬</a>
								</div>
							</li>
						</c:if>	
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								경매
							</a>
								<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
								<a class="dropdown-item" href="portfolio-1-col.html">경매물품1</a>
								<a class="dropdown-item" href="portfolio-2-col.html">경매물품2</a>
								<a class="dropdown-item" href="portfolio-3-col.html">경매물품3</a>
								<a class="dropdown-item" href="portfolio-4-col.html">경매물품4</a>
								<a class="dropdown-item" href="portfolio-item.html">경매물품5</a>
								</div>
						</li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								기부
							</a>
								<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
								<a class="dropdown-item" href="donationPlanMain">계획서</a>
								<a class="dropdown-item" href="blog-home-2.html">기부단체2</a>
								<a class="dropdown-item" href="blog-post.html">기부단체3</a>
								</div>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="about.html">1:1 문의</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="about.html">공지사항</a>
			            </li>
					</ul>
				</div>
			</div>
		</nav>
