<!-- [김도희] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../module/top.jsp"></jsp:include>
<!DOCTYPE html>

<html>
<head>
</head>
<body>
<br><br><br><br><h4>&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/home"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>홈</a></h4>
	<h4>&nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-home" aria-hidden="true"></span>홈 > 마이페이지 > 캐쉬 > 캐쉬충전 > 캐쉬충전완료</h4>
	<br><br><br><br><br><br><br>
	<div class="text-center">	
		<h1>캐쉬 충전 완료</h1><br>
		${cashRecordChange} 원 충전완료 되었습니다
	</div>
	<br><br><br><br><br><br><br><br><br>
</body>
</html>
<jsp:include page="../module/footer.jsp"></jsp:include>