<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../module/top.jsp"></jsp:include>

<form action="${pageContext.request.contextPath}/userUpdate" method="post">
	userId <input type="text" name="userId" value="${user.userId}" readonly><br>
	userPw <input type="text" name="userPw"><br>
	userName <input type="text" name="userName" value="${user.userName}" readonly><br>
	userPhone <input type="text" name="userPhone" value="${user.userPhone}"><br>
	userEmail <input type="text" name="userEmail" value="${user.userEmail}" readonly><br>
	userNick <input type="text" name="userNick" value="${user.userNick}"><br>
	<input type="submit" value="입력">
</form>
<jsp:include page="../module/footer.jsp"></jsp:include>