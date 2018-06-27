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
		<br><br><h1 class="my-4">[전체기능 분석도]</h1><br><br>
		<div class="row">
			<div class="col-sm-3" style="padding:15px;">
			<jsp:include page="./module/left.jsp"/>
		</div>
		<div class="col-lg-2.5 mb-4">
		<br><br>기능별 권한은  <span style="font-weight:bold"><br>
		"일반회원/관리자/기부단체"</span>로 나누었으며,<br><br><br>
		주요 기능은<br>
		<span style="font-weight:bold">회원 관리, 캐쉬 관리, 경매품 관리, 경매 관리, 기부금 관리,게시판, 공지사항</span> 으로 이루어져있다.<br><br>
		</div>
		<br><br><br><br><img style="width:100%; height:100%;" src="${pageContext.request.contextPath}/resources/image/process.png" data-holder-rendered="true">
		</div><br><br><br><br><br>
	</div>
</body>
</html>
<jsp:include page="./module/footer.jsp"></jsp:include>