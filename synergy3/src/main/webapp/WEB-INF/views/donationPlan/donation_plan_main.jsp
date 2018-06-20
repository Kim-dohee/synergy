<!-- [김도희] -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../module/top.jsp"></jsp:include>
<!DOCTYPE>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>Insert title here</title>
	<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>
	<script type="text/javascript">
	new Morris.Line({
		  // ID of the element in which to draw the chart.
		  element: 'myfirstchart',
		  // Chart data records -- each entry in this array corresponds to a point on
		  // the chart.
		  data: [
		    { year: '2008', value: 20 },
		    { year: '2009', value: 10 },
		    { year: '2010', value: 5 },
		    { year: '2011', value: 5 },
		    { year: '2012', value: 20 }
		  ],
		  // The name of the data record attribute that contains x-values.
		  xkey: 'year',
		  // A list of names of data record attributes that contain y-values.
		  ykeys: ['value'],
		  // Labels for the ykeys -- will be displayed when you hover over the
		  // chart.
		  labels: ['Value']
		});
	</script>
</head>
<body>
	<br><br><br><br><h4>&nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-home" aria-hidden="true"></span>홈 > 기부 > 계획서 </h4>
	<br><br><br><br><br>
	<div id="myfirstchart" style="height: 250px;"></div>
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
</body>
</html>
<jsp:include page="../module/footer.jsp"></jsp:include>