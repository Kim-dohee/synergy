<!-- [김도희] -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:include page="../module/top.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>Insert title here</title>
</head>
<body>
	<div style="text-align: center">
		<br><br><br><img src="${pageContext.request.contextPath}/resources/image/joincommit.png" width="50%" height="10%"><br><br><br>
		<h1>축하합니다!</h1><br><br>
		<h2>SYNERGY 회원가입이 완료되었습니다</h2><br><br><br>
		<h3>가입하신 아이디로 SYNERGY 전체 서비스를 즐겨보세요!!</h3><br><br>
		<a class="btn btn-primary  btn-lg" href="${pageContext.request.contextPath}/home" "button">로그인</a><br><br><br>
	</div>	
</body>
</html>
<jsp:include page="../module/footer.jsp"></jsp:include>