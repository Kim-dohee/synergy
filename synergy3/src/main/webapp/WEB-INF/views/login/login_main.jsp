<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="../module/top.jsp"></jsp:include>
<!DOCTYPE html>
<%-- <div class="container">
	<br> <br> <br> <br>
	<h1 class="my-4">Welcome to Modern Business</h1>
	<!-- Marketing Icons Section -->
	<div class="row">
		<div class="col-lg-4 mb-4">
			<div class="card h-100">
				<h4 class="card-header">일반회원 회원가입</h4>
				<div class="card-body">
					<a href="${pageContext.request.contextPath}/userInsert">userInsert</a>
				</div>
			</div>
		</div>
		<div class="col-lg-4 mb-4">
			<div class="card h-100">
				<h4 class="card-header">기부단체 회원가입</h4>
				<div class="card-body">
					<a href="${pageContext.request.contextPath}/donatorInsert">donatorInsert</a>
				</div>
			</div>
		</div>
	</div>
</div> --%>
<center>
	<br><br><h2>회원가입</h2>
	<br><a href="${pageContext.request.contextPath}/userInsert"><img src="${pageContext.request.contextPath}/resources/image/user.png" width="20%" height="35%"></a>
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div>	
	<a href="${pageContext.request.contextPath}/donatorInsert"><img src="${pageContext.request.contextPath}/resources/image/donator.png" width="20%" height="35%"></a>
</center>
<jsp:include page="../module/footer.jsp"></jsp:include>