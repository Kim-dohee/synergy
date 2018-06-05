<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../module/top.jsp"></jsp:include>

<div style="background-color: #BDBDBD;font-size:16px">
	<br> <br> <br> <br>
	<form class="form-horizontal" role="form" action="${pageContext.request.contextPath}/userUpdateConfirm" method="POST" id="frm">
		<h1 class="text-center">비밀번호 확인</h1><br>
		<div class="form-group" id="divId">	
			<label for="inputPw" class="col-lg-4 control-label">비밀번호</label>
			<div class="col-lg-4">
				<input type="text" class="form-control onlyAlphabetAndNumber" name="userPw" id="userPw"	data-rule-required="true">
			</div>
		</div>
					<div class="col-lg-4"></div>
		
		<div class="form-group">
			<div class="col-lg-offset-4 col-lg-4">
				<button type="submit" class="btn btn-primary" id="btn">회원정보 수정</button>
			</div>
		</div>

	</form>
	<br> <br> <br>
</div>
<jsp:include page="../module/footer.jsp"></jsp:include>