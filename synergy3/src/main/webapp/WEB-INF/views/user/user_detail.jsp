<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../module/top.jsp"></jsp:include>
<!DOCTYPE html>

<div style="font-size:16px">
<br><br><br><br><h4>&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/home"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>홈</a></h4>
	<form class="form-horizontal" role="form" action="${pageContext.request.contextPath}/userUpdateConfirm" id="frm">
		<h1 class="text-center">회원정보</h1><br>
		
		<div class="form-group" id="divId">
			<label for="inputId" class="col-lg-4 control-label">아이디</label>
			<div class="col-lg-4">
				<input type="text" class="form-control onlyAlphabetAndNumber" value="${user.userId}" readonly id="id" data-rule-required="true">
			</div>
			<div class="col-lg-4"></div>
		</div>
		<div class="form-group" id="divName">
			<label for="inputName" class="col-lg-4 control-label">이름</label>
			<div class="col-lg-4">
				<input type="text" class="form-control onlyHangul"value="${user.userName}" readonly id="name"data-rule-required="true" readonly>
			</div>
			<div class="col-lg-4"></div>
		</div>
		<div class="form-group" id="divEmail">
			<label for="inputEmail" class="col-lg-4 control-label">이메일</label>
			<div class="col-lg-4">
				<input type="text" class="form-control" value="${user.userEmail}"id="email" data-rule-required="true"readonly>
			</div>
			<div class="col-lg-4"></div>
		</div>
		<div class="form-group" id="divPhoneNumber">
			<label for="inputPhoneNumber" class="col-lg-4 control-label">휴대폰 번호</label>
			<div class="col-lg-4">
				<input type="tel" class="form-control onlyNumber"value="${user.userPhone}" id="phoneNumber"	data-rule-required="true" readonly>
			</div>
			<div class="col-lg-4"></div>
		</div>
		<div class="form-group">
			<div class="col-lg-offset-4 col-lg-4">
				<button type="submit" class="btn btn-primary" id="btn">회원정보 수정</button>
			</div>
		</div>

	</form>
	<br> <br> <br>
</div>
<jsp:include page="../module/footer.jsp"></jsp:include>