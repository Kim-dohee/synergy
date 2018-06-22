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
	<br><br><br><br><h4>&nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-home" aria-hidden="true"></span>Ȩ > ��� > ���� </h4>
	<div style="text-align: center; font-size: 12px;" class="container">
		<br><br><br>
		<table class="table table-hover" style="font-size: 13px;">
		<tbody>
			
			<tr>
				<th colspan="2" class="active">���� ��ȣ</th>
				<td colspan="4">
					<p class="form-control-static">${donationSpendReportdto.donationSpendReportNo}
				</td>
			</tr>
			<tr>
				<th colspan="2" class="active">����</th>
				<td colspan="4"><p class="form-control-static">${donationSpendReportdto.donationSpendReportTitle}</td>
			</tr>
			<tr>
				<th colspan="2" class="active">����</th>
				<td colspan="4"><p class="form-control-static"><pre>${donationSpendReportdto.donationSpendReportContent}</pre></td>
			</tr>
			<tr>
				<th colspan="2" class="active">��α� ��� ��¥</th>
				<td colspan="4"><p class="form-control-static">${donationSpendReportdto.donationSpendPriceDate}</td>
			</tr>
			<tr>
				<th colspan="2" class="active">��γ���</th>
				<td colspan="4"><p class="form-control-static"><pre>${donationSpendReportdto.donationSpendReportRecord}</pre></td>
			</tr>
			<tr>
				<th colspan="2" class="active">���� ��ϳ�¥</th>
				<td colspan="4"><p class="form-control-static">${donationSpendReportdto.donationSpendReportDate}</td>
			</tr>
			<tr>
				<th colspan="2" class="active">����(����)</th>
				<td colspan="4"><p class="form-control-static"> 
					<a href="${pageContext.request.contextPath}/resources/file/${file.fileName}.${file.fileExt}" download="${file.fileName}.${file.fileExt}">���� �ٿ�ε�</a>
				</td>
			</tr>
		</tbody>
		</table>
		<br><br>
		<div class="col-lg-offset-6 col-lg-2">
			<c:if test="${sessionScope.level eq '��δ�ü'}">
				<button type="button" class="btn btn-primary btn-lg" onclick="location.href='${pageContext.request.contextPath}/donationSpendReportDelete?donationPlanNo=${donationSpendReportdto.donationPlanNo}&donationSpendReportNo=${donationSpendReportdto.donationSpendReportNo}&fileName=${file.fileName}&fileExt=${file.fileExt}'">����</button>
			</c:if>
			<button type="button" class="btn btn-info btn-lg" onclick="location.href='${pageContext.request.contextPath}/donationSpendReport'">����Ʈ</button><br><br>
		</div>
	</div>	
</body>
</html>
<jsp:include page="../module/footer.jsp"></jsp:include>