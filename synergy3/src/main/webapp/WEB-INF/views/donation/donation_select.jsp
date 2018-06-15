<!-- [�赵��] -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:include page="../module/top.jsp"></jsp:include>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>Insert title here</title>
</head>
<body>
	<br><br><br>
	<h4>&nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-home" aria-hidden="true"></span>Ȩ > ��� > ����ϱ� </h4>
	<div style="text-align: center; font-size: 16px" class="container">
		<tr><tr><br><br><br>
		<div class="panel panel-default">
			<div class="panel-body">
				<label for="inputId" class="col-lg-6 control-label"><br><br><span class="glyphicon glyphicon-heart" aria-hidden="true"></span><h1>����ϰ� ���� ��</h1><br><br><br>����ϰ� �������� ���ܼ� �� ������ �̿��� ������ �����Ű���?<br>
				����ڴ��� �����ֽ� ������ �� ū ������ �̷�ϴ�.<br>����ڴ��� ������ �������� ���̵��� ���� �ڶ󳳴ϴ�.</label>
				<div class="col-lg-6">
					<img style="width:80%; height:20%;" src="${pageContext.request.contextPath}/resources/image/alldonationlogo1.jpg">
				</div>
			</div>
		</div>
		<div class="alert alert-info" role="alert"><h3>���� �Ϸ�  �� ${incomeDonationPrice} ���� ��εǾ����ϴ�.</h3></div>
		<br><br><span style="font-weight:bold;"><h2>� ��ε� ���� �ʶ��� ��δ� �����ϴ�.</h2></span><br><br>
		�츮�� ��¼�� ��δ� �� ���� ����鸸�� ��Ǫ�� �����̶�� �����ߴ����� �𸨴ϴ�.<br>
		�� �ݾ��� ������ ����ϱ⿡�� �β����� �׼���� �����ߴ����� �𸨴ϴ�.<br>
		���� ��ηε� ū ������ ���Ҽ� �ֽ��ϴ�.	
		<br><br><br>
		<div class="row">
			<c:forEach var="donation" items="${list}">
				<div class="col-lg-4 col-sm-6 portfolio-item">
					<div class="card h-100">	
						<a href="${pageContext.request.contextPath}/donationSelectDetail?donationPlanNo=${donation.donationPlanNo}"><img class="card-img-top" src="${pageContext.request.contextPath}/resources/file/${donation.file.fileName}.${donation.file.fileExt}" width="20%" height="35%"></a>		
						<div class="card-body">
							<h4 class="card-title">
							<a href="${pageContext.request.contextPath}/donationSelectDetail?donationPlanNo=${donation.donationPlanNo}">${donation.donationPlanTitle}</a>
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