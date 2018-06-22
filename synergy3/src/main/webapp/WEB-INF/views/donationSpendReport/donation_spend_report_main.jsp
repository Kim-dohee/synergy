<!-- [�赵��] -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../module/top.jsp"></jsp:include>
<!DOCTYPE>
<html>
<head>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="http://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
	<script>
		google.charts.load('current', {packages:['corechart']});
		
		// �ε� �Ϸ�� �Լ� �����Ͽ� ��Ʈ ����
		google.charts.setOnLoadCallback(drawChart);
		
	
		// ��Ʈ �ɼ��� �������� ����
		var chart_options = {
			title : '(����׷����� click �Ͻø� �� �ڼ��� �ݾ��� �˼� �ֽ��ϴ�)',
			width : 1000,
			height : 400,
			bar : {
				groupWidth : '80%' // �������� �� ���� ����
			},
			legend : {
				position : 'none' // �̰� �ּ�ó�� �غ��� ..
			}
		};
	
		function drawChart(){
			var data = google.visualization.arrayToDataTable([
				['Element', '��α�'],
				['�帲Ǯ', parseInt($("#donator1").val())], //�帲Ǯ �� ��α�
				['��ƴ�å', parseInt($("#donator2").val())], //��ƴ�å �� ��α�
				['�����', parseInt($("#donator3").val())], //����� �� ��α�
				['���̺��ĥ�己', parseInt($("#donator4").val())], //���̺��ĥ�己 �� ��α�
				['WECA',parseInt($("#donator5").val())] //WECA �� ��α�
			]);
	
			var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
			chart.draw(data, chart_options);
		}
	
	</script>
<body>
	<br><br><br><br><h4>&nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-home" aria-hidden="true"></span>Ȩ > ��� > ���� </h4>
	<div style="text-align: center; font-size: 12px;" class="container">
		<h2>[��δ�ü�� �����Ȳ]</h2>
		<input type="hidden" id="donator1" value="${incomeDonationPriceTotal1}"/>
		<input type="hidden" id="donator2" value="${incomeDonationPriceTotal2}"/>
		<input type="hidden" id="donator3" value="${incomeDonationPriceTotal3}"/>
		<input type="hidden" id="donator4" value="${incomeDonationPriceTotal4}"/>
		<input type="hidden" id="donator5" value="${incomeDonationPriceTotal5}"/>
		<div style="text-align:center; margin:0 0 100px 0; background:#555; line-height:40px;"></div>
		<div id="chart_div"></div>
		<div style="text-align:center;">
			<button type="button" onclick="chart_options.legend.position='right'; drawChart()">����(1,000��)</button>
		</div><br><br><br>
		<div class="container bs-example" data-example-id="simple-table" style="text-align: center; font-size: 12px">
			<table class="table table-hover">
				<thead>
					<tr class="active">
						<th>���� ��ȣ</th>
						<th>����</th>
						<th>��δ�ü</th>
						<th>��¥</th>
					</tr>
				</thead>
				<c:forEach var="donationSpendReport" items="${list}">
					<tbody>
						<tr>
							<th scope="row">${donationSpendReport.donationSpendReportNo}</th>				
							<td><a href="${pageContext.request.contextPath}/donationSpendReportSelect?donationSpendReportNo=${donationSpendReport.donationSpendReportNo}">${donationSpendReport.donationSpendReportTitle}</a></td>
							<td>${donationSpendReport.donatorDto.donatorName}</td>
							<td>${donationSpendReport.donationSpendReportDate}</td>
						</tr>	
					</tbody>
				</c:forEach>
			</table><br><br>
			<div class="col-lg-4"></div>
			<div class="col-lg-4">		
			<c:if test="${sessionScope.level eq '��δ�ü'}">	
				<button type="button" class="btn btn-primary btn-lg" onclick="location.href='${pageContext.request.contextPath}/donationSpendReportAgreement'">���</button>
			</c:if>	
			</div><br><br><br>
		</div>
	</div>	
</body>
</html>
<jsp:include page="../module/footer.jsp"></jsp:include>