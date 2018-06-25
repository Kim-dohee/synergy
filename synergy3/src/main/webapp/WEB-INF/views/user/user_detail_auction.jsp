<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../module/top.jsp"></jsp:include>
<!DOCTYPE html>

<br> <br> <br> <br>
<br><br><br><br><h4>&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/home"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>홈</a></h4>
	<h1 class="text-center">내가 등록한 상품</h1><br>
	<div class="container bs-example" data-example-id="simple-table" >
		<table class="table table-striped" >
			<thead>
				<tr>
					<th>제목</th>
					<th>경매 상태</th>
					<th>결제상태</th>
					<th>즉시구매가</th>
					<th>등록날짜</th>
					<th>조회수</th>
					<th>수정</th>
					<th>삭제</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="goods" items="${list}">
				<tr>
					<td><a href="${pageContext.request.contextPath}/auctionGoodsDetail?auctionGoodsNo=${goods.auctionGoodsNo}"><img src="${pageContext.request.contextPath}/resources/file/${goods.file.fileName}.${goods.file.fileExt}" width="60" height="60">${goods.auctionGoodsTitle}</a></td>
					<td>${goods.auctionStateNo}</td>
					<td id="pay"> <p>${goods.pay.payState}</p><c:if test="${goods.pay.payState eq '결재완료'}"><a href="${pageContext.request.contextPath}/payUpdateDeliver?payNo=${goods.pay.payNo}">배송하기</a></c:if>
					</td>
					<td>${goods.auctionGoodsInstanceBuyPrice}</td>
					<td>${goods.auctionGoodsDate}</td>
					<td>${goods.auctionGoodsHits}</td>
					<td><a href="#">수정</a></td>
					<td><a href="${pageContext.request.contextPath}/auctionGoodsRemove?auctionGoodsNo=${goods.auctionGoodsNo}">삭제</a></td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
<br> <br> <br>

	<h1 class="text-center">내가 구매한 상품</h1><br>
	<div class="container bs-example" data-example-id="simple-table" >
		<table class="table table-striped" >
		<caption style="caption-side:top;font-size:15px;font-weight:bold;">입찰중인 상품</caption>
			<thead>
				<tr>
					<th style="width: 10%">제목</th>
					<th style="width: 10%">입찰가</th>
					<th style="width: 10%">경매 상태</th>
					<th style="width: 10%">입찰 종료 날짜</th>
					<th style="width: 10%">조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="bidList" items="${bidList}">
				<tr>
						<td><a class="insert" href="${pageContext.request.contextPath}/auctionGoodsDetail?auctionGoodsNo=${bidList.auctionGoodsNo}"><img src="${pageContext.request.contextPath}/resources/file/${bidList.file.fileName}.${bidList.file.fileExt}" width="60" height="60">${bidList.auctionGoodsTitle}</a></td>
						<td>${bidList.bid.bidPrice}</td>
						<td>${bidList.auctionStateNo}</td>
						<td>${bidList.auctionGoodsBidEndDate}</td>
						<td>${bidList.auctionGoodsHits}</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
<br> <br> <br>

	<div class="container bs-example" data-example-id="simple-table" >
		<table class="table table-striped" >
		<caption style="caption-side:top;font-size:15px;font-weight:bold;">낙찰된 상품</caption>
			<thead>
				<tr>
					<th style="width: 10%">제목</th>
					<th style="width: 10%">결제 하기</th>
					<th style="width: 10%">경매 상태</th>
					<th style="width: 10%">등록날짜</th>
					<th style="width: 10%">조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="successfulBid" items="${successfulBid}">
				<tr>
						<td><a class="insert" href="${pageContext.request.contextPath}/auctionGoodsDetail?auctionGoodsNo=${successfulBid.auctionGoodsNo}"><img src="${pageContext.request.contextPath}/resources/file/${successfulBid.file.fileName}.${successfulBid.file.fileExt}" width="60" height="60">${successfulBid.auctionGoodsTitle}</a></td>
						<td><a class="insert" href="${pageContext.request.contextPath}/successfulBidInsert?auctionGoodsNo=${successfulBid.auctionGoodsNo}&bidNo=${successfulBid.successfulBidDto.bidNo}&successfulBidPrice=${successfulBid.successfulBidDto.successfulBidPrice}&buyUserId=${successfulBid.successfulBidDto.userId}">결제하러 가기</a>
						<td>${successfulBid.auctionStateNo}</td>
						<td>${successfulBid.auctionGoodsDate}</td>
						<td>${successfulBid.auctionGoodsHits}</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
<br> <br> <br>

	<div class="container bs-example" data-example-id="simple-table" >
		<table class="table table-striped" >
		<caption style="caption-side:top;font-size:15px;font-weight:bold;">결제한 상품</caption>
			<thead>
				<tr>
					<th style="width: 10%">제목</th>
					<th style="width: 10%">결제 상태</th>
					<th style="width: 10%">거래 날짜</th>
					<th style="width: 10%">판매자</th>
					<th style="width: 10%">수취확인</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="payList" items="${payList}">
				<tr>
					<td><a href="${pageContext.request.contextPath}/auctionGoodsDetail?auctionGoodsNo=${payList.auctionGoodsDto.auctionGoodsNo}"><img src="${pageContext.request.contextPath}/resources/file/${payList.auctionGoodsDto.file.fileName}.${payList.auctionGoodsDto.file.fileExt}" width="60" height="60">${payList.auctionGoodsDto.auctionGoodsTitle}</a></td>
					<td>${payList.payState}</td>
					<td>${payList.payBuyerCompleteDate}</td>
					<td>${payList.userId}</td>
					<td>
					<c:if test="${payList.payState eq '배송시작'}"><a href="${pageContext.request.contextPath}/payUpdateConfilrm?payNo=${payList.payNo}">수취확인</a></c:if>
					<c:if test="${payList.payState eq '결재완료'}"><a>배송준비중</a></c:if>
					</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
<jsp:include page="../module/footer.jsp"></jsp:include>