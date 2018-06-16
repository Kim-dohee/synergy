<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../module/top.jsp"></jsp:include>
<body>
	<br><h1 class="text-center">상품 리스트</h1><br>
	<div class="container bs-example" data-example-id="simple-table" >
		<table class="table table-striped" >
			<caption>Optional table caption.</caption>
			<thead>
				<tr>
					<th>판매자</th>
					<th>제목</th>
					<th>즉시구매가</th>
					<th>등록날짜</th>
					<th>조회수</th>
					<th>입찰시작날짜</th>
					<th>입찰마감날짜</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="goods" items="${list}">
					<tr>
						<td>${goods.userId}</td>
						<td><a class="insert" href="${pageContext.request.contextPath}/auctionGoodsDetail?auctionGoodsNo=${goods.auctionGoodsNo}">${goods.auctionGoodsTitle}</a>
						<img class="card-img-top" src="${pageContext.request.contextPath}/resources/file/${goods.file.fileName}.${goods.file.fileExt}" width="10%" height="20%"></td>
						<td>${goods.auctionGoodsInstanceBuyPrice}</td>
						<td>${goods.auctionGoodsDate}</td>
						<td>${goods.auctionGoodsHits}</td>
						<td>${goods.auctionGoodsBidStartDate}</td>
						<td>${goods.auctionGoodsBidEndDate}</td>
					</tr>
				</c:forEach>
			</tbody>
			
		</table>
		<a href="${pageContext.request.contextPath}/auctionGoodsInsert">상품추가</a>
	</div>

</body>
