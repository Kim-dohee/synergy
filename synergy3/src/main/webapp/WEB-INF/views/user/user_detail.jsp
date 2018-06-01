<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../module/top.jsp"></jsp:include>

<div style="background-color: #BDBDBD;font-size:16px">
	<br> <br> <br> <br>
	<form class="form-horizontal" role="form" method="post"
		action="${pageContext.request.contextPath}/userUpdate" id="frm">
		<h1 class="text-center">회원정보수정</h1><br>
		<div class="form-group" id="divId">
			<label for="inputId" class="col-lg-4 control-label">아이디</label>
			<div class="col-lg-4">
				<input type="text" class="form-control onlyAlphabetAndNumber"
					value="${user.userId}" readonly name="userId" id="id"
					data-rule-required="true"
					placeholder="30자이내의 알파벳, 언더스코어(_), 숫자만 입력 가능합니다." maxlength="30">
			</div>
		</div>
		<div class="form-group" id="divName">
			<label for="inputName" class="col-lg-4 control-label">이름</label>
			<div class="col-lg-4">
				<input type="text" class="form-control onlyHangul"
					value="${user.userName}" readonly name="userName" id="name"
					data-rule-required="true" placeholder="한글만 입력 가능합니다."
					maxlength="15">
			</div>
		</div>
		<div class="form-group" id="divNickname">
			<label for="inputNickname" class="col-lg-4 control-label">별명</label>
			<div class="col-lg-4">
				<input type="text" class="form-control" value="${user.userNick}"
					name="userNick" id="nickname" data-rule-required="true"
					placeholder="별명" maxlength="15">
			</div>
		</div>
		<div class="form-group" id="divEmail">
			<label for="inputEmail" class="col-lg-4 control-label">이메일</label>
			<div class="col-lg-4">
				<input type="text" class="form-control" value="${user.userEmail}"
					name="userEmail" id="email" data-rule-required="true"
					placeholder="이메일" maxlength="40">
			</div>
		</div>
		<div class="form-group" id="divPhoneNumber">
			<label for="inputPhoneNumber" class="col-lg-4 control-label">휴대폰
				번호</label>
			<div class="col-lg-4">
				<input type="tel" class="form-control onlyNumber"
					value="${user.userPhone}" name="userPhone" id="phoneNumber"
					data-rule-required="true" placeholder="-를 제외하고 숫자만 입력하세요."
					maxlength="11">
			</div>
		</div>
		<div class="form-group">
			<div class="col-lg-offset-4 col-lg-4">
				<button type="button" class="btn btn-default" id="btn">수정 완료</button>
			</div>
		</div>
		<div class="form-group">
			<div class="col-lg-offset-4 col-lg-4">
				<button type="button" class="btn btn-default" id="delbtn">회원 탈퇴</button>
			</div>
		</div>
	</form>
	<br> <br> <br>
</div>
<jsp:include page="../module/footer.jsp"></jsp:include>