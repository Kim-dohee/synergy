<!-- [김도희] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../module/top.jsp"></jsp:include>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
				groupWidth : '50%' // 예제에서 이 값을 수정
			},
			seriesType : 'bars',
			series : {3 : {type : 'line'}}, // 데이터에서 라인그래프로 만들값을 지정, 3은 순서를 의미하며 0부터 시작
			isStacked : true // 그래프 쌓기(스택), 기본값은 false
		};

		function drawChart(){

			// 차트 데이터
			var data = new google.visualization.arrayToDataTable([
				['년대', '아동', '노인', '장애인', '평균'], // 제목 그리고 항목들
				['2013', parseInt($("#child2013").val()), parseInt($("#old2013").val()), parseInt($("#disabled2013").val()), parseInt($("#mean2013").val())], // 제목과 항목수를 맞춰주어야 합니다.
				['2014', parseInt($("#child2014").val()), parseInt($("#old2014").val()), parseInt($("#disabled2014").val()), parseInt($("#mean2014").val())], // 마지막 값들은 라인그래프를 만들때 사용합니다.
				['2015', parseInt($("#child2015").val()), parseInt($("#old2015").val()), parseInt($("#disabled2015").val()), parseInt($("#mean2015").val())],
				['2016', parseInt($("#child2016").val()), parseInt($("#old2016").val()), parseInt($("#disabled2016").val()), parseInt($("#mean2016").val())],
				['2017', parseInt($("#child2017").val()), parseInt($("#old2017").val()), parseInt($("#disabled2017").val()), parseInt($("#mean2017").val())]
			]);

			var chart = new google.visualization.ComboChart(document.getElementById('chart_div'));
			chart.draw(data, chart_options);
		}

	</script>
	
</head>
<body>
	<br><br><br>
	<h4>&nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-home" aria-hidden="true"></span>홈 > 기부 > 기부하기 </h4>
	<div style="text-align: center; font-size: 16px" class="container">
		<h2>[연도별 기부현황]</h2>
		<!-- 평균 기부금 -->
		<input type="hidden" id="mean2013" value="${incomeDonation2013Total}"/>
		<input type="hidden" id="mean2014" value="${incomeDonation2014Total}"/>
		<input type="hidden" id="mean2015" value="${incomeDonation2015Total}"/>
		<input type="hidden" id="mean2016" value="${incomeDonation2016Total}"/>
		<input type="hidden" id="mean2017" value="${incomeDonation2017Total}"/>
		<!-- 아동 기부금 -->
		<input type="hidden" id="child2017" value="${donationUsePriceChildTotal2017}"/>
		<input type="hidden" id="child2016" value="${donationUsePriceChildTotal2016}"/>
		<input type="hidden" id="child2015" value="${donationUsePriceChildTotal2015}"/>
		<input type="hidden" id="child2014" value="${donationUsePriceChildTotal2014}"/>
		<input type="hidden" id="child2013" value="${donationUsePriceChildTotal2013}"/>
		<!-- 노인 기부금 -->
		<input type="hidden" id="old2013" value="${donationUsePriceOldTotal2013}"/>
		<input type="hidden" id="old2014" value="${donationUsePriceOldTotal2014}"/>
		<input type="hidden" id="old2015" value="${donationUsePriceOldTotal2015}"/>
		<input type="hidden" id="old2016" value="${donationUsePriceOldTotal2016}"/>
		<input type="hidden" id="old2017" value="${donationUsePriceOldTotal2017}"/>
		<!-- 장애인 기부금 -->
		<input type="hidden" id="disabled2013" value="${donationUsePriceDisabledTotal2013}"/>
		<input type="hidden" id="disabled2014" value="${donationUsePriceDisabledTotal2014}"/>
		<input type="hidden" id="disabled2015" value="${donationUsePriceDisabledTotal2015}"/>
		<input type="hidden" id="disabled2016" value="${donationUsePriceDisabledTotal2016}"/>
		<input type="hidden" id="disabled2017" value="${donationUsePriceDisabledTotal2017}"/>
		<div style="text-align:center;">
		<div id="chart_div"></div>
			<button type="button" onclick="chart_options.isStacked=false; drawChart()">나누어서 보기(click)</button>
		</div>
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
						<a href="${pageContext.request.contextPath}/donationSelectDetail?donationPlanNo=${donation.donationPlanNo}"><img class="card-img-top" src="${pageContext.request.contextPath}/resources/file/${donation.file.fileName}.${donation.file.fileExt}" width="200px" height="150px"></a>		
						<div class="card-body">
							<h4 class="card-title">
							<a href="${pageContext.request.contextPath}/donationSelectDetail?donationPlanNo=${donation.donationPlanNo}">${donation.donationPlanTitle}</a><br><br>
							<div class="progress">
								기부금 현황
								<div class="progress-bar" role="progressbar" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
								60%
								</div>
							</div>
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