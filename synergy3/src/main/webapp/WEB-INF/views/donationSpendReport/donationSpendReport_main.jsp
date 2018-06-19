<!-- [김도희] -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../module/top.jsp"></jsp:include>
<!DOCTYPE>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>Insert title here</title>
</head>
<body>
	<br><br><br><br><h4>&nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-home" aria-hidden="true"></span>홈 > 기부 > 보고서 </h4>
	<br><br><br><br><br>
	<div class="container bs-example" data-example-id="simple-table" style="text-align: center; font-size: 12px">
		<table class="table table-hover">
			<thead>
				<tr class="active">
					<th>제목</th>
					<th>기부단체</th>
					<th>날짜</th>
				</tr>
			</thead>
			<c:forEach var="donationSpendReport" items="${list}">
				<tbody>
					<tr>
						<th scope="row"><a href="${pageContext.request.contextPath}/donationSpendReportSelect?donationSpendReportNo=${donationSpendReport.donationSpendReportNo}&donationSpendReportDate=${donationSpendReportDate}">${donationSpendReport.donationSpendReportTitle}</a></th>		
						<td>${donationSpendReport.donatorDto.donatorName}</td>
						<td>${donationSpendReport.donationSpendReportDate}</td>
					</tr>	
				</tbody>
			</c:forEach>
		</table><br><br>
		<div class="col-lg-4"></div>
		<div class="col-lg-4">		
		<c:if test="${sessionScope.level eq '기부단체'}">	
			<button type="button" class="btn btn-primary btn-lg" onclick="location.href='${pageContext.request.contextPath}/donationPlanInsertView'">등록</button>
		</c:if>	
		</div><br><br><br>
	</div>
</body>
</html>
<jsp:include page="../module/footer.jsp"></jsp:include>