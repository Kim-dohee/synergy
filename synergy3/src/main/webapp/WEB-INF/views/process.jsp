<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:include page="./module/top.jsp"></jsp:include>
<!DOCTYPE>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>Insert title here</title>
</head>
<body>
	<div class="text-center container" style="font-size: 15px;">
		<br><br><h1 class="my-4">[��ü��� �м���]</h1><br><br>
		<div class="row">
			<div class="col-sm-3" style="padding:15px;">
			<jsp:include page="./module/left.jsp"/>
		</div>
		<div class="col-lg-2.5 mb-4">
		<br><br>��ɺ� ������  <span style="font-weight:bold"><br>
		"�Ϲ�ȸ��/������/��δ�ü"</span>�� ����������,<br><br><br>
		�ֿ� �����<br>
		<span style="font-weight:bold">ȸ�� ����, ĳ�� ����, ���ǰ ����, ��� ����, ��α� ����,�Խ���, ��������</span> ���� �̷�����ִ�.<br><br>
		</div>
		<br><br><br><br><img style="width:100%; height:100%;" src="${pageContext.request.contextPath}/resources/image/process.png" data-holder-rendered="true">
		</div><br><br><br><br><br>
	</div>
</body>
</html>
<jsp:include page="./module/footer.jsp"></jsp:include>