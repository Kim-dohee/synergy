<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../module/top.jsp"></jsp:include>

<div style="background-color: #BDBDBD;font-size:16px">
	<br> <br> <br> <br>
	<form class="form-horizontal" role="form" action="${pageContext.request.contextPath}/pwSearch" method="POST" id="frm">
		<h1 class="text-center">비밀번호 찾기</h1><br>
		<div class="form-group" id="divId">	
			<label for="inputName" class="col-lg-4 control-label">아이디</label>
			<div class="col-lg-4">
				<input type="text" class="form-control onlyAlphabetAndNumber" name="userId" data-rule-required="true">
			</div>
			<div class="col-lg-4"></div>
		</div>
		<div class="form-group" id="divId">	
			<label for="inputName" class="col-lg-4 control-label">이름</label>
			<div class="col-lg-4">
				<input type="text" class="form-control onlyAlphabetAndNumber" name="userName" data-rule-required="true">
			</div>
			<div class="col-lg-4"></div>
		</div>
		<div class="form-group" id="divId">	
			<label for="inputIdEmail" class="col-lg-4 control-label">이메일 주소</label>
			<div class="col-lg-4">
				<input type="text" class="form-control onlyAlphabetAndNumber" name="userEmail" data-rule-required="true">
			</div>
			<div class="col-lg-4"></div>
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