<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../module/top.jsp"></jsp:include>
<!DOCTYPE html>
<script>
$(function() {
	$("#acutionGoodsNo").mouseover(function(){
		$("#acutionGoodsNo").css("text-decoration","underline");
		$("#acutionGoodsNo").css("color","blue");
	});
	$("#acutionGoodsNo").mouseout(function(){
		$("#acutionGoodsNo").css("text-decoration","none");
		$("#acutionGoodsNo").css("color","black");
	});
	$("#acutionGoodsNo").click(function(){
		location.href="${pageContext.request.contextPath}/auctionGoodsDetail?auctionGoodsNo="+${list.auctionGoodsNo};
	});
	$("#btn").click(function(){
		$("#form").attr("action", "${pageContext.request.contextPath}/payInsert");
		$("#form").attr("method", "post");
		$('#form').submit();
		return;
	}); 
	$("#btn_cancel").click(function(){
		$("#form").attr("action", "${pageContext.request.contextPath}/home");
		$('#form').submit();
		return;
	}); 
});
</script>
<div style="font-size:16px">
	<br> <br> <br> <br>
	<form class="form-horizontal" role="form" id="form">
		<h1 class="text-center">즉시 구매 정보</h1><br>
		<div class="form-group">	
				<label for="inputId" class="col-lg-4 control-label">물품명</label>
				<div class="col-lg-4">
					<input style="border:none;" readonly type="text" class="form-control onlyAlphabetAndNumber" id="acutionGoodsNo" value="${list.auctionGoodsName}">
					<input type="hidden" value="${list.userId}" name="sellerId">
					<input type="hidden" value="${successfulBid.successfulBidNo}" name="successfulBidNo">
					<input type="hidden" value="${list.auctionGoodsNo}" name="auctionGoodsNo">
				</div>
				<div class="col-lg-4"></div>
		</div>
		
		<div class="form-group">	
				<label for="inputId" class="col-lg-4 control-label">낙찰자</label>
				<div class="col-lg-4">
					<input style="border:none;" readonly type="text" class="form-control onlyAlphabetAndNumber" value="${list.userId}">
				</div>
				<div class="col-lg-4"></div>
		</div>
		
		
		<div class="form-group">	
				<label for="inputId" class="col-lg-4 control-label">구매가격</label>
				<div class="col-lg-4">
					<input style="border:none;" readonly type="text" class="form-control onlyAlphabetAndNumber" name="successfulBid" value="${successfulBid.successfulBidPrice}">
				</div>
				<div class="col-lg-4"></div>
		</div>
		
			<div class="form-group">
				<div class="col-lg-offset-4 col-lg-4">
					<c:if test="${sessionScope.id eq successfulBid.userId}">
					<button type="submit" class="btn btn-primary" id="btn">즉시구매하기</button>
					</c:if>
					<button type="submit" class="btn btn-primary pull-right" id="btn_cancel">취소하기</button>
				</div>
			</div>
		
	</form>
	<br> <br> <br>
</div>
<jsp:include page="../module/footer.jsp"></jsp:include>