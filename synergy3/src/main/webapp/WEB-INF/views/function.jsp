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
		<br><br><h1 class="my-4">[주요기능 및 사용법]</h1><br><h2>▶ 기부하기</h2><br><br>
		<div class="row">
			<div class="col-sm-3" style="padding:15px;">
			<jsp:include page="./module/left.jsp"/>
		</div>
		<div class="panel panel-default">
		<div class="panel-heading">1."일반회원"권한으로 로그인한후, [기부하기]Click</div>
			<div class="panel-body">
				<img style="width:500px; height:250px;" src="${pageContext.request.contextPath}/resources/image/function1.png" data-holder-rendered="true">
			</div>
		</div>
		<div class="col-sm-3" style="padding:15px;"></div>
		<div class="col-sm-3" style="padding:15px;"></div>
		<div class="panel panel-default">
		<div class="panel-heading">2.기부하고 싶은 곳 Click</div>
			<div class="panel-body">
				<img style="width:500px; height:250px;" src="${pageContext.request.contextPath}/resources/image/function2.png" data-holder-rendered="true">
			</div>
		</div>
		<div class="col-sm-3" style="padding:15px;"></div>
		<div class="col-sm-3" style="padding:15px;"></div>
		<div class="panel panel-default">
		<div class="panel-heading">3.기부하기 Click</div>
			<div class="panel-body">
				<img style="width:500px; height:250px;" src="${pageContext.request.contextPath}/resources/image/function3.png" data-holder-rendered="true">
			</div>
		</div>
		<div class="col-sm-3" style="padding:15px;"></div>
		<div class="col-sm-3" style="padding:15px;"></div>
		<div class="panel panel-default">
		<div class="panel-heading">4.기부금액 입력후 기부하기 Click</div>
			<div class="panel-body">
				<img style="width:500px; height:250px;" src="${pageContext.request.contextPath}/resources/image/function4.png" data-holder-rendered="true">
			</div>
		</div>
		</div>
	</div>		
</body>
</html>
<jsp:include page="./module/footer.jsp"></jsp:include>