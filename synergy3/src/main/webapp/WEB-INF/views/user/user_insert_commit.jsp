<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../module/top.jsp"></jsp:include>
<!DOCTYPE html>

<html>
<body>
<br><br><br><br><h4>&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/home"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>홈</a></h4>
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