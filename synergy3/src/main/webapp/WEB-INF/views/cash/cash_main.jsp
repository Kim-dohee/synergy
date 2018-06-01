<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../module/top.jsp"></jsp:include>
<!DOCTYPE html>
<div class="container">
	<br> <br> <br> <br>
	<h1 class="my-4">Welcome to Modern Business</h1>
	<!-- Marketing Icons Section -->
	<div class="row">
		<div class="col-lg-4 mb-4">
			<div class="card h-100">
				<h4 class="card-header">충전</h4>
				<div class="card-body">
					<a href="${pageContext.request.contextPath}/cashInsert">cashInsert</a>
				</div>
			</div>
		</div>
		<div class="col-lg-4 mb-4">
			<div class="card h-100">
				<h4 class="card-header">사용 내역 조회</h4>
				<div class="card-body">
					<a href="${pageContext.request.contextPath}/cashSelect">cashSelect</a>
				</div>
			</div>
		</div>
	</div>
</div>
</html>
<jsp:include page="../module/footer.jsp"></jsp:include>