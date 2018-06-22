<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../module/top.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script>
	$(function() {

		$("#btn").click(function(){
			console.log($("#state").val());
			if($("#state").val()===("입찰전")){
				if($('#bidPrice').val()==""){
					alert("입찰금액을 입력하여 주시기 바랍니다.");
					return;
				}else{
					var bidPrice = $('#bidPrice').val();
					$("#btn").attr("href", "${pageContext.request.contextPath}/bidInsert?auctionGoodsNo=${detailList.auctionGoodsNo}&bidPrice="+bidPrice);
				}
			} else if($("#state").val()===("입찰중")) {
				
				if($('#bidPrice').val()==""){
					alert("입찰금액을 입력하여 주시기 바랍니다.");
					return;
				}else{
					var bidPrice = $('#bidPrice').val();
					$("#btn").attr("href", "${pageContext.request.contextPath}/bidInsertAgain?auctionGoodsNo=${detailList.auctionGoodsNo}&bidPrice="+bidPrice);
				}
			} else if($("#state").val()===("입찰 종료")) {
				$("#btn").attr("href", "${pageContext.request.contextPath}/successfulBidInsert?bidNo=${bidList.bidNo}&successfulBidPrice=${bidList.bidPrice}&auctionGoodsNo=${detailList.auctionGoodsNo}&buyUserId=${bidList.userId}");
			}
		});
	 	
		/* 현재시간과 낙찰시간을 비교해서 경매상태를 변경 */
		var nowTime = new Date();
		var BidEndDate = $('#BidEndDate').val();
		var BidEndDate = new Date(BidEndDate);
		if(nowTime>BidEndDate){
			$("#btn").text("낙찰확인");
			$("#state").val("입찰 종료");
			$("#btn2").hide();
			$("#bidPrice").change(function() { 
				alert("종료된 경매입니다."); 
				$(this).val('');
				return;
			});
		} else {
		/* 입찰단위에 맞게 , 입찰가보다 높게, 즉시구매가보다 적게 적기 */
			$('input#bidPrice').change(function(){
				var bidPrice = parseInt($(this).val());
				var bidUnit = parseInt(${detailList.auctionGoodsBidUnit});
				var nowBid = parseInt($('#nowBid').val());
				var buyPrice = parseInt(${detailList.auctionGoodsInstanceBuyPrice});
				var minPrice = parseInt(${detailList.auctionGoodsMinPrice});
				var cashTotal = parseInt(${cashTotal});
				console.log(nowBid);
				console.log(bidPrice);
				if((bidPrice%bidUnit) != 0){
					$(this).val('');
					$(this).focus();
					alert('입찰단위에 맞게 입력하세요');
				} else if(nowBid>=bidPrice) {
					$(this).val('');
					$(this).focus();
					alert('현재 입찰가보다 높게 적어주세요');
				} else if(buyPrice<=bidPrice) {
					$(this).val('');
					$(this).focus();
					alert('즉시구매가보다 적게 적어주세요');
				}  else if(minPrice>bidPrice) {
					$(this).val('');
					$(this).focus();
					alert('최소가격보다 크게 적어주세요');
				}  else if(cashTotal<bidPrice) {
					$(this).val('');
					$(this).focus();
					alert('캐시를 충전해 주세요');
				}
			});
		}
	});
</script>
</head>
<body>
	<div style="text-align: center; font-size: 16px;">
		<br>
		<br>
		<br>
		<div class="container">
		<input type="hidden"  id="auctionGoodsNo"value="${detailList.auctionGoodsNo}" name="auctionGoodsNo" />
				<table class="table table-bordered" style="font-size: 16px;">
					<tbody>
						<tr>
							
							<th class="active">상태</th>
							<td><input type="text"  id="state"
								value="${detailList.auctionStateNo}" class="form-control" readonly/></td>
						</tr>
						<tr>
							<th class="active">조회수</th>
							<td><p class="form-control-static">${detailList.auctionGoodsHits}</td>
						</tr>
						<tr>
							<th colspan="2" class="active">제목</th>
							<td colspan="4"><p class="form-control-static">${detailList.auctionGoodsTitle}</td>
						</tr>

						<tr>
							<th colspan="2" class="active">상품명</th>
							<td><p class="form-control-static">${detailList.auctionGoodsName}</td>
						</tr>
						<tr>
							<th colspan="2" class="active">내용</th>
							<td colspan="4"><img src="resources/file/${detailList.file.fileName}.${detailList.file.fileExt}" width="100%" height="100%">
							<textarea rows="15" name="auctionGoodsContent" class="form-control" readonly>${detailList.auctionGoodsContent}</textarea></td>
							
						</tr>
						<tr>
							<th class="active">최소가</th>
							<td><p class="form-control-static">${detailList.auctionGoodsMinPrice}</td>
							<th class="active">즉시구매가</th>
							<td><p class="form-control-static">${detailList.auctionGoodsInstanceBuyPrice}</td>
							<th class="active">입찰단위 (원)</th>
							<td><p class="form-control-static">${detailList.auctionGoodsBidUnit}</td>
						</tr>

						<tr>
							<th class="active">입찰기간</th>
							<td><p class="form-control-static">3일</td>
							<th class="active">결제기간</th>
							<td><p class="form-control-static">3일</td>
						</tr>
						<tr>
							<th class="active">기부금계획서</th>
							<td><p class="form-control-static"><a href="${pageContext.request.contextPath}/donationPlanSelectDetail?donationPlanNo=${donation.donationPlanNo}">${donation.donationPlanTitle}</a></td>
						</tr>
						<tr>
							<th class="active">현재 입찰가</th>
							<td><input type="text" value="${bidList.bidPrice}" id="nowBid" name="auctionGoodsTitle" class="form-control" readonly/></td>
						</tr>
					</tbody>
					
				</table>
				<a class="btn btn-primary btn-lg" id="bidButton"href="${pageContext.request.contextPath}/auctionGoodsSelect">리스트로</a>
				<br>
				<br>
				<c:if test="${detailList.auctionStateNo ne '경매 종료'}">
				<form id="form" >
				<input type="hidden" value="${sessionScope.id}" name="userId">
					<table class="table table-bordered">
						<tr>
							<td>현재 입찰가</td>
							<td><p class="form-control-static">${bidList.bidPrice}</td>
							<td>입찰자</td>
							<td><input type="text" id="BiduserId" value="${bidList.userId}" class="form-control" readonly/></td>
							<td>입찰 마감날짜</td>
							<td><input type="text" id="BidEndDate" value="${detailList.auctionGoodsBidEndDate}" class="form-control" readonly /></td>
						</tr>
						<tr>
							<td>입찰단위 (원)</td>
							<td><p class="form-control-static">${detailList.auctionGoodsBidUnit} </td>
							<td>입찰하기</td>
							<td><input type="text" id="bidPrice" name="bidPrice" class="form-control" /></td>
						</tr>
						<tr>
							<td>캐시</td>
							<td><p id="cashTotal" class="form-control-static">${cashTotal}</p></td>
						</tr>
					</table>
				<input type="hidden" value="${detailList.auctionGoodsInstanceBuyPrice}" name="auctionGoodsInstanceBuyPrice">
				<input type="hidden" value="${bidList.bidPrice}" name="successfulBidPrice">
				<input type="hidden" value="${bidList.bidNo}" name="bidNo">
				<input type="hidden" value="${bidList.userId}" name="buyUserId">
				<input type="hidden" value="${detailList.auctionGoodsNo}" name="auctionGoodsNo">
				<a class="btn btn-primary btn-lg" href="#" id="btn">입찰하기</a>
				<a class="btn btn-primary btn-lg" href="${pageContext.request.contextPath}/successfulBidNowInsert?auctionGoodsInstanceBuyPrice=${detailList.auctionGoodsInstanceBuyPrice}&auctionGoodsNo=${detailList.auctionGoodsNo}&buyUserId=${bidList.userId}" id="btn2">즉시구매</a>
				</form>
				</c:if>
				
				
				<br>
				<br>
		</div>
	</div>
</body>
</html>
<jsp:include page="../module/footer.jsp"></jsp:include>
