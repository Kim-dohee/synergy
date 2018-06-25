<!-- [김도희] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../module/top.jsp"></jsp:include>
<!DOCTYPE html>

<html>
<head>
</head>
<body>
	<div>
		<br><br><br><br><h4>&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/home"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>홈</a></h4>
		<h1 class="my-4 text-center">캐시</h1><br><br>
		<!-- Marketing Icons Section -->
		<div class="row justify-content-center">
			<div class="col-lg-4 mb-4">
				<div class="card h-100">
					<h4 class="card-header">충전</h4>
					<div class="card-body">
						<a href="${pageContext.request.contextPath}/cashRecordInsert">cashRecordInsert</a>
					</div>
				</div>
			</div>
			<div class="col-lg-4 mb-4">
				<div class="card h-100">
					<h4 class="card-header">사용 내역 조회</h4>
					<div class="card-body">
						<a href="${pageContext.request.contextPath}/cashRecordSelect?userId=${sessionScope.id}">cashSelect</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
<jsp:include page="../module/footer.jsp"></jsp:include>