<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../module/top.jsp"></jsp:include>
<script>
	$(function() {
		$('#payState2').hide();
		$('#payState3').hide();
		if($('#payState').text()=="결재완료"){
			$('#payState2').show();
		} else if ($('#payState').text()=="배송시작"){
			$('#payState3').show();
		}
		
		if($('#confirm').text()=="배송시작"){
			$('#confirm2').text("수취확인");
		}
	});
</script>
<br> <br> <br> <br>
	<h1 class="text-center">내가 등록한 상품</h1><br>
	<div class="container bs-example" data-example-id="simple-table" >
		<table class="table table-striped" >
			<thead>
				<tr>
					<th>제목</th>
					<th></th>
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
					<td><a href="${pageContext.request.contextPath}/auctionGoodsDetail?auctionGoodsNo=${goods.auctionGoodsNo}"><img src="${pageContext.request.contextPath}/resources/file/${goods.file.fileName}.${goods.file.fileExt}" width="60" height="60"></a></td>
					<td><a href="${pageContext.request.contextPath}/auctionGoodsDetail?auctionGoodsNo=${goods.auctionGoodsNo}">${goods.auctionGoodsTitle}</a>
					<td>${goods.auctionStateNo}</td>
					<td> <p id="payState">${goods.pay.payState}<p><a id="payState2" href="${pageContext.request.contextPath}/payUpdateDeliver?payNo=${goods.pay.payNo}">배송시작</a><a id="payState3">배송중</a></td>
					<td>${goods.auctionGoodsInstanceBuyPrice}</td>
					<td>${goods.auctionGoodsDate}</td>
					<td>${goods.auctionGoodsHits}</td>
					<td><a href="#"></a>수정</td>
					<td><a href="#"></a>삭제</td>
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
					<th style="width: 20%"></th>
					<th style="width: 7%">경매 상태</th>
					<th style="width: 10%">즉시구매가</th>
					<th style="width: 10%">등록날짜</th>
					<th style="width: 5%">조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="goods" items="${list}">
				<tr>
						<td><a class="insert" href="${pageContext.request.contextPath}/auctionGoodsDetail?auctionGoodsNo=${goods.auctionGoodsNo}"><img src="${pageContext.request.contextPath}/resources/file/${goods.file.fileName}.${goods.file.fileExt}" width="60" height="60"></a></td>
						<td><a class="insert" href="${pageContext.request.contextPath}/auctionGoodsDetail?auctionGoodsNo=${goods.auctionGoodsNo}">${goods.auctionGoodsTitle}</a>
						<td>${goods.auctionStateNo}</td>
						<td>${goods.auctionGoodsInstanceBuyPrice}</td>
						<td>${goods.auctionGoodsDate}</td>
						<td>${goods.auctionGoodsHits}</td>
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
					<th style="width: 20%"></th>
					<th style="width: 7%">경매 상태</th>
					<th style="width: 10%">즉시구매가</th>
					<th style="width: 10%">등록날짜</th>
					<th style="width: 5%">조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="goods" items="${list}">
				<tr>
						<td><a class="insert" href="${pageContext.request.contextPath}/auctionGoodsDetail?auctionGoodsNo=${goods.auctionGoodsNo}"><img src="${pageContext.request.contextPath}/resources/file/${goods.file.fileName}.${goods.file.fileExt}" width="60" height="60"></a></td>
						<td><a class="insert" href="${pageContext.request.contextPath}/auctionGoodsDetail?auctionGoodsNo=${goods.auctionGoodsNo}">${goods.auctionGoodsTitle}</a>
						<td>${goods.auctionStateNo}</td>
						<td>${goods.auctionGoodsInstanceBuyPrice}</td>
						<td>${goods.auctionGoodsDate}</td>
						<td>${goods.auctionGoodsHits}</td>
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
					<th style="width: 10%"></th>
					<th style="width: 10%">결제 상태</th>
					<th style="width: 10%">결제 날짜</th>
					<th style="width: 10%">판매자</th>
					<th style="width: 10%">수취확인</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="payList" items="${payList}">
				<tr>
					<td><a href="${pageContext.request.contextPath}/auctionGoodsDetail?auctionGoodsNo=${payList.auctionGoodsDto.auctionGoodsNo}"><img src="${pageContext.request.contextPath}/resources/file/${payList.auctionGoodsDto.file.fileName}.${payList.auctionGoodsDto.file.fileExt}" width="60" height="60"></a></td>
					<td>${payList.auctionGoodsDto.auctionGoodsTitle}</td>
					<td id="confirm">${payList.payState}</td>
					<td>${payList.payBuyerCompleteDate}</td>
					<td>${payList.userId}</td>
					<td><a id="confirm2" href="${pageContext.request.contextPath}/payUpdateConfilrm?payNo=${payList.payNo}"></a></td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
<jsp:include page="../module/footer.jsp"></jsp:include>