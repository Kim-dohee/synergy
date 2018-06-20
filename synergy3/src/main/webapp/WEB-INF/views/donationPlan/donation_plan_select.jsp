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
	<br><br><br><br><h4>&nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-home" aria-hidden="true"></span>홈 > 기부 > 계획서 </h4>
	<div style="text-align: center; font-size: 12px;" class="container">
		<br><br><br>
		<table class="table table-hover" style="font-size: 13px;">
		<tbody>
			<tr>
				<th colspan="2" class="active">계획서 번호</th>
				<td colspan="4"><p class="form-control-static">${donationPlanNo}</td>
			</tr>
			<tr>
				<th colspan="2" class="active">목적</th>
				<td colspan="4"><p class="form-control-static">${donationPlanPurpose}</td>
			</tr>
			<tr>
				<th colspan="2" class="active">기부금 사용기간</th>
				<td colspan="4"><p class="form-control-static">${donationPlanDate} ~ ${donationPlanUseTerm}</td>
			</tr>
			<tr>
				<th colspan="2" class="active">모집목표액</th>
				<td colspan="4"><p class="form-control-static">${donationPlanGoalPrice}</td>
			</tr>
			<tr>
				<th colspan="2" class="active">계획서(파일)</th>
				<td colspan="4"><p class="form-control-static"> 
					<a href="${pageContext.request.contextPath}/resources/file/${fileName}.${fileExt}" download="${fileName}.${fileExt}">계획서 다운로드</a> 
				</td>
			</tr>
		</tbody>
		</table>
		<button type="button" class="btn btn-info btn-lg" onclick="location.href='${pageContext.request.contextPath}/donationPlanMain'">리스트로</button><br><br>
	</div>	
</body>
</html>
<jsp:include page="../module/footer.jsp"></jsp:include>