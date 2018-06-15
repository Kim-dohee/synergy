<!-- [김도희] -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:include page="../module/top.jsp"></jsp:include>
<!DOCTYPE>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>Insert title here</title>
</head>
<body>
	<div class="container bs-example" data-example-id="simple-table">
		<table class="table table-hover">
			<thead>
				<tr class="active">
					<th>기부단체</th>
					<th>제목</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="donationPlan" items="${list}">
					<tr>
						<th scope="row">1</th>
						<td>${donationPlan.donationPlanTitle}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>
<jsp:include page="../module/footer.jsp"></jsp:include>