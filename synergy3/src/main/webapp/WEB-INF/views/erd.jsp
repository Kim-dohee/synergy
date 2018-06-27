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
		<br><br><h1 class="my-4">[ERD]</h1><br><br>
		<div class="row">
			<div class="col-sm-3" style="padding:15px;">
			<jsp:include page="./module/left.jsp"/>
		</div>
		<div class="col-sm-6 mb-4">
			<img style="width:100; height:300;" src="${pageContext.request.contextPath}/resources/image/erd.png" data-holder-rendered="true">
		</div>
		<div class="col-sm-3"></div>
		</div>
	</div>	
</body>
</html>
<jsp:include page="./module/footer.jsp"></jsp:include>