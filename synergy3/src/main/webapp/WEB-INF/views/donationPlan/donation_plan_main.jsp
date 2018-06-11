<!-- [김도희] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../module/top.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<br><br><br>
	<h4>&nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-home" aria-hidden="true"></span>홈 > 기부 > 계획서 </h4>
	<div style="font-size: 16px; text-align: center">
		<br><br><br>
		<h1 class="my-4 text-center">계획서</h1><br><br>
		<!-- Marketing Icons Section -->
		<div class="row justify-content-center">
			<div class="col-lg-4 mb-4">
				<div class="card h-100">
					<h4 class="card-header">계획서 등록</h4>
					<div class="card-body">
						<a href="${pageContext.request.contextPath}/donationPlanAgreement">donationPlanAgreement</a>
					</div>
				</div>
			</div>
			<div class="col-lg-4 mb-4">
				<div class="card h-100">
					<h4 class="card-header">계획서 조회</h4>
					<div class="card-body">
						<a href="${pageContext.request.contextPath}/cashRecordSelect?">cashSelect</a>
					</div>
				</div>
			</div>
		</div>
	</div><br><br><br>
</body>
</html>
<jsp:include page="../module/footer.jsp"></jsp:include>