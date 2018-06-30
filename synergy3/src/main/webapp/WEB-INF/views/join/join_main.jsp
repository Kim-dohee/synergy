<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../module/top.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<br><br><br><br><h4>&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/home"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>홈</a> > 회원가입</h4>
	<div style="text-align:center">
		<br><br><br><h1>SYNERGY에 오신것을 환영합니다</h1><br>
		<h3>보다나은 서비스를 사용하기 위해서 회원가입을 하시기 바랍니다</h3><br><br>
		<br><a href="${pageContext.request.contextPath}/userAgreement"><img src="${pageContext.request.contextPath}/resources/image/user.png" width="20%" height="35%"></a>
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;	
		<a href="${pageContext.request.contextPath}/donatorAgreement"><img src="${pageContext.request.contextPath}/resources/image/donator.png" width="20%" height="35%"></a>
		<br><br><br><br>
	</div>	
</body>
<jsp:include page="../module/footer.jsp"></jsp:include>