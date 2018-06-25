<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../module/top.jsp"></jsp:include>
<!DOCTYPE html>

<div style="background-color: #BDBDBD;font-size:16px">
	<br><br><br><br><h4>&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/home"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>홈</a></h4>
	<form class="form-horizontal" role="form" action="${pageContext.request.contextPath}/pwSearch" method="POST" id="frm">
		<h1 class="text-center">아이디 찾기 결과</h1><br>
		<div class="form-group" id="divId">	
			<c:forEach var="user" items="${list}">
				<label for="inputId" class="col-lg-4 control-label">아이디 검색 결과</label>
				<div class="col-lg-4">
					<input style="border:none;" readonly type="text" class="form-control onlyAlphabetAndNumber" name="userId" data-rule-required="true" value="${user.userId}">
				</div>
				<div class="col-lg-4"></div>
			</c:forEach>
		</div>
		
			<div class="form-group">
				<div class="col-lg-offset-4 col-lg-4">
					<button type="submit" class="btn btn-default" id="btn">비밀번호 찾기</button>
				</div>
			</div>
		
	</form>
	<br> <br> <br>
</div>
<jsp:include page="../module/footer.jsp"></jsp:include>