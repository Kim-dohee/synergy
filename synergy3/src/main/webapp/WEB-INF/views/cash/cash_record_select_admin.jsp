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
	<div class="text-center">
		<form class="form-horizontal" role="form" id="frm" name="frm" method="post" action="${pageContext.request.contextPath}/cashRecordInsert">
			<br><h1>캐쉬 입금 내역 조회</h1><br>
			<div class="container bs-example" data-example-id="simple-table">
				<table class="table table-hover">
					<thead>
						<tr class="active">
							<th>경매품</th>
							<th>입금 금액</th>
							<th>입금자</th>
							<th>현 총잔액</th>
							<th>입금 날짜</th>
							<th>배송요청</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="cash" items="${list}">
							<tr>
								<td>1</td>
								<td>${cash.cashRecordChange}</td>
								<td>6</td>
								<td>${cash.cashRecordTotal}</td>
								<td>${cash.cashRecordChangeDate}</td>    
								<td><a href="#">배송요청하기</a></td>    
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