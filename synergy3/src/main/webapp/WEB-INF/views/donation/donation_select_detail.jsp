<!-- [�赵��] -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:include page="../module/top.jsp"></jsp:include>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>Insert title here</title>
	<script>
		$(document).ready(function(){
			//Ŭ�� �ѹ��� ���
			$('#image').one('click', function () {
				//����ϱ� click�� ��αݾ� �Է°���
				$("p").after('<span style="font-weight:bold"><h1>����ڴ��� ������ �������� ���� ��ȭ�� �Ͼ�ϴ�.</h1></span><br>������ ��� �ı�� �� ��ȭ�� �Ұ��ϰ� �����ϰڽ��ϴ�!');
				${"#cash"}.after('<input type="text" class="form-control onlyAlphabetAndNumber" name="cashRecordChange" data-rule-required="true" placeholder="�ݾ�(����)�� �Է� �����մϴ�" maxlength="30" id="cashRecordChange" onKeyPress="return numkeyCheck(event)">');
			});
		});
	</script>	
</head>
<body>
	<br><br><br>
	<h4>&nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-home" aria-hidden="true"></span>Ȩ > ��� > ����ϱ�  </h4><br><br><br>
	<div style="text-align: center; font-size: 16px" class="container">
		<c:forEach var="donation" items="${list}">
			 <span style="font-weight:bold"><h1>"${donation.donationPlanTitle}"</h1></span><br><br><br>
			 <img class="img-thumbnail" style="width:70%; height:20%;" src="${pageContext.request.contextPath}/resources/file/${donation.file.fileName}.${donation.file.fileExt}" data-holder-rendered="true">
			 <br><br><br><br><br><br>
			 <pre>${donation.donationPlanContent}</pre><br><br><br>
		</c:forEach>
		<div class="panel panel-info">
			<div class="panel-heading">
			<h3 class="panel-title" id="panel-title">�� ĳ���ݾ�<span class="anchorjs-icon"></span></a></h3>
			</div>
			<div class="panel-body">
		        <c:if test="${sessionScope.level ne '�Ϲ�ȸ��'}">
		        <a href="${donation.donationPlanContent}/home">�α���</a> �� ĳ���ݾ� Ȯ�� �� ��ΰ� �����մϴ�
		        </c:if>
		        <c:if test="${sessionScope.level eq '�Ϲ�ȸ��'}">
		        	${totalCash} ��
		        </c:if>  
			</div>
		</div>
		<c:if test="${sessionScope.level eq '�Ϲ�ȸ��'}">
			<br><br><br><img style="width:20%; height:20%;" src="${pageContext.request.contextPath}/resources/image/donationbutton.png" id="image">
		</c:if>
		<br><br>
		<p></p>
		<form action="${pageContext.request.contextPath}" method="post">
			<div id="cash">					
			</div>
		</form>
	</div>
</body>
</html>
<jsp:include page="../module/footer.jsp"></jsp:include>