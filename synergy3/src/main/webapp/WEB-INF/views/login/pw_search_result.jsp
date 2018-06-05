<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../module/top.jsp"></jsp:include>

<div style="background-color: #BDBDBD;font-size:16px">
	<br> <br> <br> <br>
	<form class="form-horizontal" role="form" action="${pageContext.request.contextPath}/home" id="frm">
		<h1 class="text-center">아이디 찾기 결과</h1><br>
		<div class="form-group" id="divId">	
			<c:forEach var="user" items="${list}">
				<label for="inputName" class="col-lg-4 control-label">비밀번호 검색 결과</label>
				<div class="col-lg-4">
					<input type="text" class="form-control onlyAlphabetAndNumber" data-rule-required="true" value="${user.userPw}">
				</div>
				<div class="col-lg-4"></div>
			</c:forEach>
		</div>
		
			<div class="form-group">
				<div class="col-lg-offset-4 col-lg-2">
					<button type="submit" class="btn btn-default" id="btn">홈으로</button>
				</div>
			</div>
		
	</form>
	<br> <br> <br>
</div>
<jsp:include page="../module/footer.jsp"></jsp:include>