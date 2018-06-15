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
	<h4>&nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-home" aria-hidden="true"></span>홈 > 기부 > 기부하기 </h4>
	<div style="text-align: center; font-size: 16px" class="container">
		<tr><tr><br><br><br>
		<div class="panel panel-default">
			<div class="panel-body">
				<label for="inputId" class="col-lg-6 control-label"><br><br><span class="glyphicon glyphicon-heart" aria-hidden="true"></span><h1>기억하고 싶은 일</h1><br><br><br>기억하고 싶은일이 생겨서 그 마음을 이웃과 나누고 싶으신가요?<br>
				기부자님이 보내주신 정성이 모여 큰 기적을 이룹니다.<br>기부자님의 따뜻한 마음으로 아이들의 꿈이 자라납니다.</label>
				<div class="col-lg-6">
					<img style="width:80%; height:20%;" src="${pageContext.request.contextPath}/resources/image/alldonationlogo1.jpg">
				</div>
			</div>
		</div>
		<div class="alert alert-info" role="alert"><h3>오늘 하루  총 ${incomeDonationPrice} 원이 기부되었습니다.</h3></div>
		<br><br><span style="font-weight:bold;"><h2>어떤 기부도 결코 초라한 기부는 없습니다.</h2></span><br><br>
		우리는 어쩌면 기부는 돈 많은 사람들만이 베푸는 선행이라고 생각했는지도 모릅니다.<br>
		또 금액이 적으면 기부하기에는 부끄러운 액수라고 생각했는지도 모릅니다.<br>
		작은 기부로도 큰 감동을 전할수 있습니다.	
		<br><br><br>
		<div class="row">
			<c:forEach var="donation" items="${list}">
				<div class="col-lg-4 col-sm-6 portfolio-item">
					<div class="card h-100">	
						<a href="${pageContext.request.contextPath}/donationSelectDetail?donationPlanNo=${donation.donationPlanNo}"><img class="card-img-top" src="${pageContext.request.contextPath}/resources/file/${donation.file.fileName}.${donation.file.fileExt}" width="20%" height="35%"></a>		
						<div class="card-body">
							<h4 class="card-title">
							<a href="${pageContext.request.contextPath}/donationSelectDetail?donationPlanNo=${donation.donationPlanNo}">${donation.donationPlanTitle}</a>
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