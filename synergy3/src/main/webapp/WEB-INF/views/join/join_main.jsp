<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../module/top.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<div style="text-align:center">
		<br><br><h2>회원가입</h2>
		<br><a href="${pageContext.request.contextPath}/userInsert"><img src="${pageContext.request.contextPath}/resources/image/user.png" width="20%" height="35%"></a>
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;	
		<a href="${pageContext.request.contextPath}/donatorInsert"><img src="${pageContext.request.contextPath}/resources/image/donator.png" width="20%" height="35%"></a>
		<br><br><br><br>
	</div>	
</body>
<jsp:include page="../module/footer.jsp"></jsp:include>