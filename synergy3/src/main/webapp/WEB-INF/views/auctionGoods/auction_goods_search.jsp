<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../module/top.jsp"></jsp:include>
<!DOCTYPE html>

<body>
<br><br><br><br><h4>&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/home"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>홈</a> > <a href="${pageContext.request.contextPath}/auctionGoodsSelect">전체 제품</a>  </h4>
	<br><h1 class="text-center">상품 리스트</h1><br>
	<div class="container bs-example" data-example-id="simple-table" >
		<table class="table table-striped" >
			<thead>
				<tr>
					<th style="width: 15%">제목</th>
					<th style="width: 20%"></th>
					<th style="width: 10%">즉시구매가</th>
					<th style="width: 8%">판매자</th>
					<th style="width: 10%">등록날짜</th>
					<th style="width: 5%">조회수</th>
					<th style="width: 7%">경매 상태</th>
					<th style="width: 10%">입찰시작날짜</th>
					<th style="width: 10%">입찰마감날짜</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="goods" items="${list}">
					<tr>
						<td><a class="insert" href="${pageContext.request.contextPath}/auctionGoodsDetail?auctionGoodsNo=${goods.auctionGoodsNo}"><img src="resources/file/${goods.file.fileName}.${goods.file.fileExt}" width="90" height="90"></a></td>
						<td><a class="insert" href="${pageContext.request.contextPath}/auctionGoodsDetail?auctionGoodsNo=${goods.auctionGoodsNo}">${goods.auctionGoodsTitle}</a>
						<td>${goods.auctionGoodsInstanceBuyPrice}</td>
						<td>${goods.userId}</td>
						<td>${goods.auctionGoodsDate}</td>
						<td>${goods.auctionGoodsHits}</td>
						<td>${goods.auctionStateNo}</td>
						<td>${goods.auctionGoodsBidStartDate}</td>
						<td>${goods.auctionGoodsBidEndDate}</td>
					</tr>
				</c:forEach>
			</tbody>
			
		</table>
		<c:forEach var="start" begin="1" end="${lastPage}">
				<a style="font-size:14px" class="text-center" href="${pageContext.request.contextPath}/auctionGoodsSelect?currentPage=${start}">[${start}]</a>
		</c:forEach><br> 
		<a class="btn btn-primary btn-sm" href="${pageContext.request.contextPath}/auctionGoodsInsert">상품추가</a>
	</div>

</body>
