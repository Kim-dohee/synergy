<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../module/top.jsp"></jsp:include>
<!DOCTYPE html>

<html>
<head>
</head>
<body>
<form action="${pageContext.request.contextPath}/adminInsert" method="post">
	adminId <input type="text" name="adminId"><br>
	adminPw <input type="text" name="adminPw"><br>
	adminName <input type="text" name="adminName"><br>
	adminPhone <input type="text" name="adminPhone"><br>
	adminAddress <input type="text" name="adminAddress"><br>
	<input type="submit" value="입력">
</form>
</body>
</html>