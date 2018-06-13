<!-- [김도희] -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:include page="../module/top.jsp"></jsp:include>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>Insert title here</title>
</head>
<body>
	<br><br><br>
	<h4>&nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-home" aria-hidden="true"></span>홈 > 기부 > 기부하기 > 전체기부 </h4>
	<div style="text-align: center; font-size: 16px" class="container">
		<h1>전체 기부</h1><br><br><br>
		<div class="row">
			<c:forEach var="donation" items="${list}">
				<div class="col-lg-4 col-sm-6 portfolio-item">
					<div class="card h-100">	
						<a href="#"><img class="card-img-top" src="${pageContext.request.contextPath}/resources/file/${donation.file.fileName}.${donation.file.fileExt}" width="20%" height="35%"></a>		
						<div class="card-body">
							<h4 class="card-title">
							<a href="#">${donation.donationPlanTitle}</a>
							</h4>
						</div>
					</div>
				</div>
			</c:forEach>	
		</div>
	</div>	
</body>
</html>
<jsp:include page="../module/footer.jsp"></jsp:include>