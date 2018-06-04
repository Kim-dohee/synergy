<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../module/top.jsp"></jsp:include>

<div style="background-color: #BDBDBD;font-size:16px">
	<br> <br> <br> <br>
	<form class="form-horizontal" role="form" action="${pageContext.request.contextPath}/userUpdateConfirm" id="frm">
		<h1 class="text-center">회원정보</h1><br>
		<div class="form-group" id="divId">
			<label for="inputId" class="col-lg-2 control-label">아이디</label>
			<div class="col-lg-6">
				<input type="text" class="form-control onlyAlphabetAndNumber"
					value="${user.userId}" readonly id="id"
					data-rule-required="true">
			</div>
		</div>
		<div class="form-group" id="divName">
			<label for="inputName" class="col-lg-2 control-label">이름</label>
			<div class="col-lg-6">
				<input type="text" class="form-control onlyHangul"
					value="${user.userName}" readonly id="name"
					data-rule-required="true" readonly>
			</div>
		</div>
		<div class="form-group" id="divNickname">
			<label for="inputNickname" class="col-lg-2 control-label">별명</label>
			<div class="col-lg-6">
				<input type="text" class="form-control" value="${user.userNick}"
					id="nickname" data-rule-required="true"
					readonly>
			</div>
		</div>
		<div class="form-group" id="divEmail">
			<label for="inputEmail" class="col-lg-2 control-label">이메일</label>
			<div class="col-lg-6">
				<input type="text" class="form-control" value="${user.userEmail}"
					id="email" data-rule-required="true"
					readonly>
			</div>
		</div>
		<div class="form-group" id="divPhoneNumber">
			<label for="inputPhoneNumber" class="col-lg-2 control-label">휴대폰
				번호</label>
			<div class="col-lg-6">
				<input type="tel" class="form-control onlyNumber"
					value="${user.userPhone}" id="phoneNumber"
					data-rule-required="true" readonly>
			</div>
		</div>
		<div class="form-group">
			<div class="col-lg-offset-4 col-lg-2">
				<button type="submit" class="btn btn-default" id="btn">회원정보 수정</button>
			</div>
		</div>

	</form>
	<br> <br> <br>
</div>
<jsp:include page="../module/footer.jsp"></jsp:include>