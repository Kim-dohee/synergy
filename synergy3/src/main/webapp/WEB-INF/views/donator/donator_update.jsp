<!-- [김도희] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/donatorInsert" method="post">
		donatorId <input type="text" name="donatorId"><br>
		donatorPw <input type="text" name="donatorPw"><br>
		donatorBusinessNo <input type="text" name="donatorBusinessNo"><br>
		donatorName <input type="text" name="donatorName"><br>
		donatorTelephone <input type="text" name="donatorTelephone"><br>
		donatorHomepage <input type="text" name="donatorHomepage"><br>
		<input type="submit" value="입력">
	</form>
</body>
</html>