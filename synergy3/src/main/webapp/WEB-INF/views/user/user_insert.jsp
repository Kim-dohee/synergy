<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>user_insert.jsp</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/userInsert" method="post">
	userId <input type="text" name="userId"><br>
	userPw <input type="text" name="userPw"><br>
	userName <input type="text" name="userName"><br>
	userPhone <input type="text" name="userPhone"><br>
	userEmail <input type="text" name="userEmail"><br>
	userNick <input type="text" name="userNick"><br>
	<input type="submit" value="입력">
</form>
</body>
</html>