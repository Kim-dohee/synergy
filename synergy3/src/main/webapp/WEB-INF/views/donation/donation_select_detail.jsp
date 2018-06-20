<!-- [김도희] -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:include page="../module/top.jsp"></jsp:include>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>Insert title here</title>
	<script>
		$(document).ready(function(){
			//클릭 한번만 허용
			$('#image').one('click', function () {
				//기부하기 click시 기부금액 입력가능
				$("#p").append('<span style="font-weight:bold"><h1>기부자님의 소중한 마음으로 놀라운 변화가 일어납니다.</h1></span><br>투명한 기부 후기로 그 변화를 소개하고 보답하겠습니다!');
				$("#div1").append('총 기부금액&nbsp;&nbsp;&nbsp;<input type="text" name="incomeDonationPrice" placeholder="금액(숫자)만 입력 가능합니다" maxlength="30" id="incomeDonationPrice" onKeyPress="return numkeyCheck(event)" data-rule-required="true">&nbsp;&nbsp;&nbsp;<input type="button" value="기부하기" class="btn btn-warning btn-lg" id="donationuse">');
			});
			//기부금액 입력이 숫자만 허용
			$(document).on("keyup","#incomeDonationPrice",function(event){
				$(this).val($(this).val().replace(/[^0-9]/g,""));
         	 });
			//기부하기 버튼클릭시 button type을 submit으로 변경
			$(document).on("click","#donationuse",function(event){
				$("#donationuse").attr("type","submit");
			});
		});
	</script>	
</head>
<body>
	<br><br><br>
	<h4>&nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-home" aria-hidden="true"></span>홈 > 기부 > 기부하기  </h4><br><br><br>
	<div style="text-align: center; font-size: 16px" class="container">
		<c:forEach var="donation" items="${list}">
	 		<span style="font-weight:bold"><h1>"${donation.donationPlanTitle}"</h1></span><br><br><br>
			<img class="img-thumbnail" style="width:70%; height:20%;" src="${pageContext.request.contextPath}/resources/file/${donation.file.fileName}.${donation.file.fileExt}" data-holder-rendered="true">
			<br><br><br><br><br><br>
			<div class="alert alert-info" role="alert"><h3>총 ${donationPlanPrice} 원이 기부되었습니다.</h3></div><br><br><br><br>
			<pre>${donation.donationPlanContent}</pre><br><br><br>
			<c:if test="${sessionScope.level eq '일반회원'}">
				<div class="panel panel-info">
					<div class="panel-heading">
						<h3 class="panel-title" id="panel-title">내 캐쉬금액<span class="anchorjs-icon"></span></a></h3>
					</div>
					<div class="panel-body">				      
				        ${totalCash} 원			    
					</div>
				</div>
			</c:if>
			<c:if test="${sessionScope.level eq '일반회원'}">
				<br><br><br><img style="width:20%; height:20%;" src="${pageContext.request.contextPath}/resources/image/donationbutton.png" id="image">
				<br><br><br><br>
				<p id="p"></p>
				<form action="${pageContext.request.contextPath}/incomeDonation?donationPlanNo=${donation.donationPlanNo}" method="post">
					<br><br><div id="div1"></div><br><br>
				</form>
			</c:if>
		</c:forEach>		
	</div>
</body>
</html>
<jsp:include page="../module/footer.jsp"></jsp:include>