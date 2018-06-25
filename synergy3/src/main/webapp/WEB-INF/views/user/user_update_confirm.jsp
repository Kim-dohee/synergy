<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../module/top.jsp"></jsp:include>
<!DOCTYPE html>

<div style="font-size:16px">
<br><br><br><br><h4>&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/home"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>홈</a></h4>
	<form class="form-horizontal" role="form" action="${pageContext.request.contextPath}/userUpdateConfirm" method="POST" id="frm">
		<h1 class="text-center">비밀번호 확인</h1><br>
		<div class="form-group" id="divId">	
			<label for="inputPw" class="col-lg-4 control-label">비밀번호</label>
			<div class="col-lg-4">
				<input type="text" class="form-control onlyAlphabetAndNumber" name="userPw" id="userPw"	data-rule-required="true" placeholder="본인인증을 위해 비밀번호를 한번 더 입력해 주세요.">
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