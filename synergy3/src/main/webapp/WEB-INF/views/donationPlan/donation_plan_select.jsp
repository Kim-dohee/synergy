<!-- [�赵��] -->
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
	<br><br><br></b><h4>&nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-home" aria-hidden="true"></span>Ȩ > ��� > ��ȹ�� </h4>
	<br><br><br><br><br>
	<div class="container bs-example" data-example-id="simple-table">
		<table class="table table-hover">
			<thead>
				<tr class="active">
					<th>��δ�ü</th>
					<th>����</th>
					<th>��¥</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach var="donationPlan" items="${list}">
					<tr>
						<th scope="row">${donatorName}</th>
						<td>${donationPlan.donationPlanTitle}</td>
						<td>${donationPlan.donationPlanDate}</td>
					</tr>	
			</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>
<jsp:include page="../module/footer.jsp"></jsp:include>