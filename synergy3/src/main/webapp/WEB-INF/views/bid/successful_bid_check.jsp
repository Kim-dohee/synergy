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

});

</script>
<div style="font-size:16px">
	<br> <br> <br> <br>
	<form class="form-horizontal" role="form" action="${pageContext.request.contextPath}/pwSearch" method="POST" id="frm">
		<h1 class="text-center">낙찰 확인 정보</h1><br>
		<div class="form-group">	
				<label for="inputId" class="col-lg-4 control-label">물품명</label>
				<div class="col-lg-4">
					<input style="border:none;" readonly type="text" class="form-control onlyAlphabetAndNumber" id="acutionGoodsNo" data-rule-required="true" value="${list.auctionGoodsName}">
				</div>
				<div class="col-lg-4"></div>
		</div>
		
		<div class="form-group">	
				<label for="inputId" class="col-lg-4 control-label">낙찰자</label>
				<div class="col-lg-4">
					<input style="border:none;" readonly type="text" class="form-control onlyAlphabetAndNumber" name="userId" data-rule-required="true" value="${list.userId}">
				</div>
				<div class="col-lg-4"></div>
		</div>
		
		
		<div class="form-group">	
				<label for="inputId" class="col-lg-4 control-label">낙찰가격</label>
				<div class="col-lg-4">
					<input style="border:none;" readonly type="text" class="form-control onlyAlphabetAndNumber" name="userId" data-rule-required="true" value="${bidList.bidPrice}">
				</div>
				<div class="col-lg-4"></div>
		</div>
		
			<div class="form-group">
				<div class="col-lg-offset-4 col-lg-4">
					<button type="submit" class="btn btn-primary" id="btn">구매하기</button>
					<button type="submit" class="btn btn-primary pull-right" id="btn">취소하기</button>
				</div>
			</div>
		
	</form>
	<br> <br> <br>
</div>
<jsp:include page="../module/footer.jsp"></jsp:include>