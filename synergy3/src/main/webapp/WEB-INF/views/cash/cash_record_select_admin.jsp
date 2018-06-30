<!-- [김도희] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../module/top.jsp"></jsp:include>
<!DOCTYPE html>

<html>
<head>
</head>
<body>
<br><br><br><h4>&nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-home" aria-hidden="true"></span><a href="${pageContext.request.contextPath}/home">홈</a> > 마이페이지 > 캐쉬 </h4>
	<div class="text-center">
		<form class="form-horizontal" role="form" id="frm" name="frm" method="post" action="${pageContext.request.contextPath}/cashRecordInsert">
			<br><h1>캐쉬 입금 내역 조회</h1><br>
			<div class="container bs-example" data-example-id="simple-table">
				<table class="table table-hover">
					<thead>
						<tr class="active">
							<th>경매품번호</th>
							<th>경매품</th>
							<th>입금 금액</th>
							<th>입금자</th>
							<th>입금 날짜</th>
							<th>결재상태</th>
							<th>기부하기</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="cashGoods" items="${cashGoods}">
							<tr>
								<td>${cashGoods.payDto.successfulBid.auctionGoods.auctionGoodsNo}</td>
								<td><a href ="${pageContext.request.contextPath}/auctionGoodsDetail?auctionGoodsNo=${cashGoods.payDto.successfulBid.auctionGoods.auctionGoodsNo}">${cashGoods.payDto.successfulBid.auctionGoods.auctionGoodsTitle}</a></td>
								<td>${cashGoods.cashRecordChange}</td>
								<td>${cashGoods.payDto.userId2}</td>
								<td>${cashGoods.cashRecordChangeDate}</td>    
								<td><a id="payState">${cashGoods.payDto.payState}</a></td>
								<td><c:if test="${cashGoods.payDto.payState eq '수취확인'}"><a href="${pageContext.request.contextPath}/incomeDonationAuction?incomeDonationPrice=${cashGoods.cashRecordChange}&donationPlanNo=${cashGoods.payDto.successfulBid.auctionGoods.donationPlanNo}&payNo=${cashGoods.payDto.payNo}&cashRecordNo=${cashGoods.cashRecordNo}&userId=${cashGoods.payDto.userId2}">기부하기</a></c:if>
								<c:if test="${cashGoods.payDto.payState eq '결재완료'}"><a>구매요청</a></c:if>
								<c:if test="${cashGoods.cashCategory eq '기부'}"><a>기부완료</a></c:if>
								</td>
							</tr>
							<input type="hidden" value="${cashGoods.cashCategory}" id="cashCate">
						</c:forEach>
					</tbody>
				</table>
			</div>	 
			<c:forEach var="start" begin="1" end="${lastPage}">
				<a href="${pageContext.request.contextPath}/cashRecordSelectAdmin?currentPage=${start}&userId=${sessionScope.id}">[${start}]</a>
			</c:forEach><br>     
		</form>
	</div>
</body>
</html>
<jsp:include page="../module/footer.jsp"></jsp:include>