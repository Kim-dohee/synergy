<!-- [김도희] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../module/top.jsp"></jsp:include>
<!DOCTYPE html>

<html>
<head>	
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script>
	google.charts.load('current', {packages:['corechart']});
	
	// 로딩 완료시 함수 실행하여 차트 생성
	google.charts.setOnLoadCallback(drawChart);
	

	// 차트 옵션을 전역으로 설정
	var chart_options = {
		title : '(막대그래프를 click 하시면 더 자세히 금액을 알수 있습니다)',
		width : 1000,
		height : 400,
		bar : {
			groupWidth : '80%' // 예제에서 이 값을 수정
		},
		legend : {
			position : 'none' // 이걸 주석처리 해보면 ..
		}
	};

	function drawChart(){
		var data = google.visualization.arrayToDataTable([
			['Element', '기부금'],
			['드림풀', parseInt($("#donator1").val())], //드림풀 총 기부금
			['기아대책', parseInt($("#donator2").val())], //기아대책 총 기부금
			['사랑밭', parseInt($("#donator3").val())], //사랑밭 총 기부금
			['세이브더칠드런', parseInt($("#donator4").val())], //세이브더칠드런 총 기부금
			['WECA',parseInt($("#donator5").val())] //WECA 총 기부금
		]);

		var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
		chart.draw(data, chart_options);
	}

</script>
</head>
<body>
	<br><br><br><br><h4>&nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-home" aria-hidden="true"></span><a href="${pageContext.request.contextPath}/home">홈 </a>> 기부 > 계획서 </h4>
	<div style="text-align: center; font-size: 12px;" class="container">
		<h2>[기부단체별 기부현황]</h2>
		<input type="hidden" id="donator1" value="${incomeDonationPriceTotal1}"/>
		<input type="hidden" id="donator2" value="${incomeDonationPriceTotal2}"/>
		<input type="hidden" id="donator3" value="${incomeDonationPriceTotal3}"/>
		<input type="hidden" id="donator4" value="${incomeDonationPriceTotal4}"/>
		<input type="hidden" id="donator5" value="${incomeDonationPriceTotal5}"/>
		<div style="text-align:center; margin:0 0 100px 0; background:#555; line-height:40px;"></div>
		<div id="chart_div"></div>
		<div style="text-align:center;">
			<button type="button" onclick="chart_options.legend.position='right'; drawChart()">단위(1,000만)</button>
		</div><br><br><br>
		<div class="container bs-example" data-example-id="simple-table" style="text-align: center; font-size: 12px">
		<table class="table table-hover">
			<thead>
				<tr class="active">					
					<th>계획서 번호</th>
					<th>제목</th>
					<th>기부단체</th>
					<th>날짜</th>
				</tr>
			</thead>
			<c:forEach var="donationPlan" items="${list}">
				<tbody>
					<tr>
						<th scope="row">${donationPlan.donationPlanNo}</th>
						<td><a href="${pageContext.request.contextPath}/donationPlanSelectDetail?donationPlanNo=${donationPlan.donationPlanNo}&donationPlanDate=${donationPlan.donationPlanDate}">${donationPlan.donationPlanTitle}</a></td>		
						<td>${donationPlan.donatorDto.donatorName}</td>
						<td>${donationPlan.donationPlanDate}</td>
					</tr>	
				</tbody>
			</c:forEach>
		</table><br><br>
		<div class="col-lg-4"></div>
		<div class="col-lg-4">		
		<c:if test="${sessionScope.level eq '기부단체'}">	
			<button type="button" class="btn btn-primary btn-lg" onclick="location.href='${pageContext.request.contextPath}/donationPlanAgreement'">등록</button>
		</c:if>	
		</div><br><br><br>
	</div>
	</div>
</body>
</html>
<jsp:include page="../module/footer.jsp"></jsp:include>