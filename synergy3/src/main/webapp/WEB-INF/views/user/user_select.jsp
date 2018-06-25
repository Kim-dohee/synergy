<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../module/top.jsp"></jsp:include>
<!DOCTYPE>

<html>
<body>
<br><br><br><br><h4>&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/home"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>홈</a></h4>
		<br><h1 class="text-center">유저 리스트</h1><br>
		<div class="container bs-example" data-example-id="simple-table" >
		   <table class="table table-striped" >
		     <caption>Optional table caption.</caption>
		     <thead>
		       <tr>
		         <th>아이디</th>
		         <th>이름</th>
		         <th>폰번호</th>
		         <th>이메일</th>
		         <th>가입날짜</th>
		       </tr>
		     </thead>
		     <tbody>
		     <c:forEach var="user" items="${list}">
		       <tr>
		         <th scope="row">1${user.userId}</th>
		         <td>${user.userName}</td>
		         <td>${user.userPhone}</td>
		         <td>${user.userEmail}</td>
		         <td>${user.userJoindate}</td>
		       </tr>
		       </c:forEach>
		     </tbody>
		   </table>
		 </div>
</body>
</html>
<jsp:include page="../module/footer.jsp"></jsp:include>