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
			if($("#state").val()===("입찰전")){
				$("#form").attr("action", "${pageContext.request.contextPath}/bidInsert");
				$("#form").attr("method", "POST");
				if($('#bidPrice').val()==""){
					alert("입찰금액을 입력하여 주시기 바랍니다.");
					return;
				}else{
				$('#form').submit();
				}
			} else if($("#state").val()===("입찰중")) {
				$("#form").attr("action", "${pageContext.request.contextPath}/bidInsertAgain");
				$("#form").attr("method", "POST");
				if($('#bidPrice').val()==""){
					alert("입찰금액을 입력하여 주시기 바랍니다.");
					return;
				}else{
				$('#form').submit();
				}
			} else if($("#state").val()===("입찰 종료")) {
				$("#form").attr("action", "${pageContext.request.contextPath}/successfulBidInsert?bidNo=${bidList.bidNo}&successfulBidPrice=${bidList.bidPrice}");
				$('#form').submit();
			}
		});
	 	$("#btn2").click(function(){
	 		if($("#btn").val()=="낙찰확인"){
	 			alert('이미 끝난 경매입니다.');
	 			return
	 		} else {
	 			var cashTotal = ${cashTotal};
				var buyPrice = ${datailList.auctionGoodsInstanceBuyPrice};
				if(cashTotal<buyPrice){
					alert('캐시를 충전해주세요');
					return;
				} else {
					$("#form").attr("action", "${pageContext.request.contextPath}/successfulBidNowInsert?bidNo=${bidList.bidNo}&successfulBidPrice=${datailList.auctionGoodsInstanceBuyPrice}");
					$('#form').submit();
				}
	 		}
		}); 
		
		/* 현재시간과 낙찰시간을 비교해서 경매상태를 변경 */
		var nowTime = new Date();
		var BidEndDate = $('#BidEndDate').val();
		var BidEndDate = new Date(BidEndDate);
		if(nowTime>BidEndDate){
			$("#state").val("입찰 종료");
			$("#btn").val("낙찰확인");
		}
		/* 입찰단위에 맞게 , 입찰가보다 높게, 즉시구매가보다 적게 적기 */
		$('input#bidPrice').change(function(){
			var bidPrice = parseInt($(this).val());
			var bidUnit = parseInt(${datailList.auctionGoodsBidUnit});
			var nowBid = parseInt($('#nowBid').val());
			var buyPrice = parseInt(${datailList.auctionGoodsInstanceBuyPrice});
			var minPrice = parseInt(${datailList.auctionGoodsMinPrice});
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
		
	});
</script>
</head>
<body>
	<div style="text-align: center; font-size: 16px;">
		<br>
		<br>
		<br>
		<div class="container">
		<input type="hidden"  id="auctionGoodsNo"value="${datailList.auctionGoodsNo}" name="auctionGoodsNo" />
				<table class="table table-bordered" style="font-size: 16px;">
					<tbody>
						<tr>
							
							<th class="active">상태</th>
							<td><input type="text"  id="state"
								value="${datailList.auctionStateNo}" class="form-control" readonly/></td>
						</tr>
						<tr>
							<th class="active">조회수</th>
							<td><p class="form-control-static">${datailList.auctionGoodsHits}</td>
						</tr>
						<tr>
							<th colspan="2" class="active">제목</th>
							<td colspan="4"><p class="form-control-static">${datailList.auctionGoodsTitle}</td>
						</tr>

						<tr>
							<th colspan="2" class="active">상품명</th>
							<td><p class="form-control-static">${datailList.auctionGoodsName}</td>
						</tr>
						<tr>
							<th colspan="2" class="active">내용</th>
							<td colspan="4"><img src="${pageContext.request.contextPath}/resources/file/${datailList.file.fileName}.${datailList.file.fileExt}" width="100%" height="100%">
							<textarea rows="15" name="auctionGoodsContent" class="form-control" readonly>${datailList.auctionGoodsContent}</textarea></td>
							
						</tr>
						<tr>
							<th class="active">최소가</th>
							<td><p class="form-control-static">${datailList.auctionGoodsMinPrice}</td>
							<th class="active">즉시구매가</th>
							<td><p class="form-control-static">${datailList.auctionGoodsInstanceBuyPrice}</td>
							<th class="active">입찰단위 (원)</th>
							<td><p class="form-control-static">${datailList.auctionGoodsBidUnit}</td>
						</tr>

						<tr>
							<th class="active">입찰기간</th>
							<td><p class="form-control-static">3일</td>
							<th class="active">결제기간</th>
							<td><p class="form-control-static">3일</td>
						</tr>
						<tr>
							<th class="active">기부금계획서</th>
							<td><select name="bidUnit">
									<option value="100">100</option>
									<option value="1000">1000</option>
									<option value="5000">5000</option>
									<option value="10000">10000</option>
							</select></td>
						</tr>
						<tr>
							<th class="active">현재 입찰가</th>
							<td><input type="text" value="${bidList.bidPrice}" id="nowBid" name="auctionGoodsTitle" class="form-control" readonly/></td>
						</tr>
					</tbody>
				</table>
				<%-- <a class="btn btn-primary btn-lg" id="bidButton"href="${pageContext.request.contextPath}/bid">입찰하기</a> --%>
				<br>
				<br>
				
				<form id="form" >
				<input type="hidden" value="${sessionScope.id}" name="userId">
					<table class="table table-bordered">
						<tr>
							<td>현재 입찰가</td>
							<td><p class="form-control-static">${bidList.bidPrice}</td>
							<td>입찰자</td>
							<td><input type="text" id="BiduserId" value="${datailList.userId}" class="form-control" readonly/></td>
							<td>입찰 마감날짜</td>
							<td><input type="text" id="BidEndDate" value="${datailList.auctionGoodsBidEndDate}" class="form-control" readonly /></td>
						</tr>
						<tr>
							<td>입찰단위 (원)</td>
							<td><p class="form-control-static">${datailList.auctionGoodsBidUnit} </td>
							<td>입찰하기</td>
							<td><input type="text" id="bidPrice" name="bidPrice" class="form-control" /></td>
						</tr>
						<tr>
							<td>캐시</td>
							<td><p id="cashTotal" class="form-control-static">${cashTotal}</p></td>
						</tr>
					</table>
					<input type="hidden" value="${datailList.auctionGoodsInstanceBuyPrice}" name="auctionGoodsInstanceBuyPrice">
					<input type="hidden" value="${bidList.bidPrice}" name="successfulBidPrice">
					<input type="hidden" value="${bidList.bidNo}" name="bidNo">
					<input type="hidden" value="${bidList.userId}" name="buyUserId">
					<input type="hidden" value="${datailList.auctionGoodsNo}" name="auctionGoodsNo">
					<input type="button" id="btn" value="입찰하기">
					<input type="button" id="btn2" value="즉시구매">
				</form>
				
				
				
				<br>
				<br>
		</div>
	</div>
</body>
</html>
<jsp:include page="../module/footer.jsp"></jsp:include>
