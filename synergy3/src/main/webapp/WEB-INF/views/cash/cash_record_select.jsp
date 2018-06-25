<!-- [김도희] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../module/top.jsp"></jsp:include>
<!DOCTYPE html>

<html>
<head>
</head>
<body>
<br><br><br><br><h4>&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/home"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>홈</a></h4>
	<div class="text-center">
		<form class="form-horizontal" role="form" id="frm" name="frm" method="post" action="${pageContext.request.contextPath}/cashRecordInsert">
			<br><h1>캐쉬 사용 내역 조회</h1><br>
			<div class="container bs-example" data-example-id="simple-table">
				<table class="table table-hover">
					<thead>
						<tr class="active">
							<th>사용 내역</th>
							<th>사용 금액</th>
							<th>현 총잔액</th>
							<th>충전 날짜</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="cash" items="${list}">
							<tr>
								<th scope="row">${cash.cashCategory}</th>
								<td>${cash.cashRecordChange}</td>
								<td>${cash.cashRecordTotal}</td>
								<td>${cash.cashRecordChangeDate}</td>    
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>	 
			<c:forEach var="start" begin="1" end="${lastPage}">
				<a href="${pageContext.request.contextPath}/cashRecordSelect?currentPage=${start}&userId=${sessionScope.id}">[${start}]</a>
			</c:forEach><br>     
		</form>
	</div>
</body>
</html>
<jsp:include page="../module/footer.jsp"></jsp:include>