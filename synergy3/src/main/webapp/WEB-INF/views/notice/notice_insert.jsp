<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../module/top.jsp"></jsp:include>
<!DOCTYPE>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
</head>
<body>
			<form class="form-horizontal" role="form" id="frm" name="frm"
			method="post"
			action="${pageContext.request.contextPath}/donatorInsert">
			<br>
			<div class="form-group" id="divId">
				<label for="inputId" class="col-lg-4 control-label">아이디</label>
				<div class="col-lg-4">
					<input type="text" class="form-control onlyAlphabetAndNumber"
						name="donatorId" id="id" data-rule-required="true"
						placeholder="30자이내의 알파벳, 언더스코어(_), 숫자만 입력 가능합니다." maxlength="30">
				</div>
			</div>
			<div class="form-group">
				<label for="inputId" class="col-lg-4 control-label"></label>
				<div class="col-lg-4">
					<input type="button" class="btn" value="아이디 중복확인"
						name="idcheck" id="idcheck">
				</div>
			</div>
			<div class="form-group" id="divPassword">
				<label for="inputPassword" class="col-lg-4 control-label">패스워드</label>
				<div class="col-lg-4">
					<input type="password" class="form-control" name="donatorPw"
						id="password" data-rule-required="true" placeholder="패스워드"
						maxlength="30">
				</div>
			</div>
			<div class="form-group" id="divPasswordCheck">
				<label for="inputPasswordCheck" class="col-lg-4 control-label">패스워드
					확인</label>
				<div class="col-lg-4">
					<input type="password" class="form-control" id="passwordCheck"
						data-rule-required="true" placeholder="패스워드 확인" maxlength="30">
				</div>
			</div>
			<div class="form-group" id="divName">
				<label for="inputName" class="col-lg-4 control-label">기부단체이름</label>
				<div class="col-lg-4">
					<input type="text" class="form-control onlyHangul"
						name="donatorName" id="name" data-rule-required="true"
						placeholder="한글만 입력 가능합니다." maxlength="15">
				</div>
			</div>

			<div class="form-group" id="divBusinessno">
				<label for="intupBusinessno" class="col-lg-4 control-label">사업번호</label>
				<div class="col-lg-4">
					<input type="tel" class="form-control" name="donatorBusinessNo"
						id="businessno" data-rule-required="true" placeholder="별명"
						maxlength="15">
				</div>
			</div>

			<div class="form-group" id="divHomepage">
				<label for="inputHomepage" class="col-lg-4 control-label">홈페이지</label>
				<div class="col-lg-4">
					<input type="text" class="form-control" name="donatorHomepage"
						id="Homepage" data-rule-required="true" placeholder="이메일"
						maxlength="40">
				</div>
			</div>
			<div class="form-group" id="divPhoneNumber">
				<label for="inputPhoneNumber" class="col-lg-4 control-label">기부단체
					전화번호</label>
				<div class="col-lg-4">
					<input type="tel" class="form-control onlyNumber"
						name="donatorTelephone" id="phoneNumber" data-rule-required="true"
						placeholder="-를 제외하고 숫자만 입력하세요." maxlength="11">
				</div>
			</div>
			<div class="form-group">
				<div class="col-lg-4"></div>
				<div class="col-lg-4">
					<input type="submit" class="btn btn-primary" id="btn" value="회원가입">
				</div>
				<div class="col-lg-4"></div>
			</div>
		</form>
</body>
</html>
<jsp:include page="../module/footer.jsp"></jsp:include>