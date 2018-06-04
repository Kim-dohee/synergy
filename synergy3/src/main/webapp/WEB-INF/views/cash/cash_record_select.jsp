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
	<form class="form-horizontal" role="form" id="frm" name="frm" method="post" action="${pageContext.request.contextPath}/cashRecordInsert">
		<br><h1 class="text-center">캐쉬 사용 내역 조회</h1><br>
		<div class="container bs-example" data-example-id="simple-table">
			<table class="table table-striped">
				<thead>
					<tr>
						<th>충전 금액</th>
						<th>현 총잔액</th>
						<th>충전 날짜</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="cash" items="${list}">
						<tr>
							<th scope="row">${cash.cashRecordChange}</th>
							<td>${cash.cashRecordTotal}</td>
							<td>${cash.cashRecordChangeDate}</td>    
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>	 
	</form>
	<c:forEach var="start" begin="1" end="${lastPage}">
		<a href="${pageContext.request.contextPath}/cashRecordSelect?currentPage=${start}&userId=${sessionScope.id}">[${start}]</a>
	</c:forEach><br>      
</body>
</html>
<jsp:include page="../module/footer.jsp"></jsp:include>