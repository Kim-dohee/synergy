<!-- [김도희] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../module/top.jsp"></jsp:include>
<!DOCTYPE html>

<html>
<head>
</head>
<body>
	<br><br><br><br><h4>&nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-home" aria-hidden="true"></span><a href="${pageContext.request.contextPath}/home">홈</a> > 기부 > 보고서 </h4>
	<div style="text-align: center; font-size: 12px;" class="container">
		<br><br><br>
		<table class="table table-hover" style="font-size: 13px;">
		<tbody>
			
			<tr>
				<th colspan="2" class="active">보고서 번호</th>
				<td colspan="4">
					<p class="form-control-static">${donationSpendReportdto.donationSpendReportNo}
				</td>
			</tr>
			<tr>
				<th colspan="2" class="active">제목</th>
				<td colspan="4"><p class="form-control-static">${donationSpendReportdto.donationSpendReportTitle}</td>
			</tr>
			<tr>
				<th colspan="2" class="active">내용</th>
				<td colspan="4"><p class="form-control-static"><pre>${donationSpendReportdto.donationSpendReportContent}</pre></td>
			</tr>
			<tr>
				<th colspan="2" class="active">기부금 사용 날짜</th>
				<td colspan="4"><p class="form-control-static">${donationSpendReportdto.donationSpendPriceDate}</td>
			</tr>
			<tr>
				<th colspan="2" class="active">기부내역</th>
				<td colspan="4"><p class="form-control-static"><pre>${donationSpendReportdto.donationSpendReportRecord}</pre></td>
			</tr>
			<tr>
				<th colspan="2" class="active">보고서 등록날짜</th>
				<td colspan="4"><p class="form-control-static">${donationSpendReportdto.donationSpendReportDate}</td>
			</tr>
			<tr>
				<th colspan="2" class="active">보고서(파일)</th>
				<td colspan="4"><p class="form-control-static"> 
					<a href="${pageContext.request.contextPath}/resources/file/${file.fileName}.${file.fileExt}" download="${file.fileName}.${file.fileExt}">보고서 다운로드</a>
				</td>
			</tr>
		</tbody>
		</table>
		<br><br>
		<div class="col-lg-offset-6 col-lg-2">
			<c:if test="${sessionScope.level eq '기부단체'}">
				<button type="button" class="btn btn-primary btn-lg" onclick="location.href='${pageContext.request.contextPath}/donationSpendReportDelete?donationPlanNo=${donationSpendReportdto.donationPlanNo}&donationSpendReportNo=${donationSpendReportdto.donationSpendReportNo}&fileName=${file.fileName}&fileExt=${file.fileExt}'">삭제</button>
			</c:if>
			<button type="button" class="btn btn-info btn-lg" onclick="location.href='${pageContext.request.contextPath}/donationSpendReport'">리스트</button><br><br>
		</div>
	</div>	
</body>
</html>
<jsp:include page="../module/footer.jsp"></jsp:include>