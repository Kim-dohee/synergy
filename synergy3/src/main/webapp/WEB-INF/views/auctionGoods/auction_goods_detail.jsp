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
				if($('#bidPrice').val()==""){
					alert("입찰금액을 입력하여 주시기 바랍니다.");
					return;
				}else{
				$('#form').submit();
				}
			} else {
				$("#form").attr("action", "${pageContext.request.contextPath}/bidInsertAgain");
				if($('#bidPrice').val()==""){
					alert("입찰금액을 입력하여 주시기 바랍니다.");
					return;
				}else{
				$('#form').submit();
				}
			}
		});
		if($('#bidEndDate')>$('#nowTime')){
			($("#state").val()===("dd"))
		}
		var BidEndDate = $('#BidEndDate').val();
		var nowTime = $('#nowTime').val();
			
		var time = BidEndDate-nowTime;
		console.log(time);
		console.log(BidEndDate);
		console.log(nowTime);
	});
</script>
</head>
<body>
	<div style="text-align: center; font-size: 16px;">
		<br>
		<br>
		<br>
		<div class="container">
				<table class="table table-bordered" style="font-size: 16px;">
					<tbody>
						<tr>
							<th class="active">시간</th>
							<td><input type="text"  id="nowTime"
								value="${nowTime}" name="auctionGoodsTitle" class="form-control" /></td>
						</tr>
						<tr>
							<th class="active">상태</th>
							<td><input type="text"  id="state"
								value="${datailList.auctionStateNo}" name="auctionGoodsTitle" class="form-control" /></td>
						</tr>
						<tr>
							<th class="active">조회수</th>
							<td><input type="text"
								value="${datailList.auctionGoodsHits}" name="auctionGoodsTitle" class="form-control" /></td>
						</tr>
						<tr>
							<th colspan="2" class="active">제목</th>
							<td colspan="4"><input type="text"
								value="${datailList.auctionGoodsTitle}" name="auctionGoodsTitle" class="form-control" /></td>
						</tr>

						<tr>
							<th colspan="2" class="active">상품명</th>
							<td><input type="text" value="${datailList.auctionGoodsName}" name="auctionGoodsName" class="form-control" /></td>
						</tr>
						<tr>
							<th colspan="2" class="active">내용</th>
							<td colspan="4"><textarea rows="15" name="auctionGoodsContent" class="form-control">${datailList.auctionGoodsContent}</textarea></td>
						</tr>
						<tr>
							<th colspan="2" class="active">사진파일</th>
							<td colspan="4"><input type="text" placeholder="파일을 선택하세요. " name="filename" class="form-control" /></td>
						</tr>

						<tr>
							<th class="active">최소가</th>
							<td><input type="text" value="${datailList.auctionGoodsMinPrice}" name="auctionGoodsMinPrice" class="form-control" /></td>
							<th class="active">즉시구매가</th>
							<td><input type="text" value="${datailList.auctionGoodsInstanceBuyPrice}" name="auctionGoodsInstanceBuyPrice" class="form-control" /></td>
							<th class="active">입찰단위 (원)</th>
							<td><input type="text" value="${datailList.auctionGoodsBidUnit}" name="auctionGoodsBidUnit" class="form-control" /></td>
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
							<td><input type="text"
								value="${bidList.bidPrice}" name="auctionGoodsTitle" class="form-control" /></td>
						</tr>
					</tbody>
				</table>
				<%-- <a class="btn btn-primary btn-lg" id="bidButton"href="${pageContext.request.contextPath}/bid">입찰하기</a> --%>
				<br>
				<br>
				
				<form id="form" method="POST">
					<table class="table table-bordered">
						<tr>
						
							<td>현재 입찰가</td>
							<td><p class="form-control-static">${bidList.bidPrice} </td>
							<td>입찰 마감날짜</td>
							<td><input type="text" id="BidEndDate" value="${datailList.auctionGoodsBidEndDate}" class="form-control" /></td>
						</tr>
						<tr>
							<td>입찰하기</td>
							<td><input type="text" id="bidPrice" name="bidPrice" class="form-control" /></td>
						</tr>
					</table>
					<input type="hidden" value="${datailList.auctionGoodsNo}" name="auctionGoodsNo">
					<input type="button" id="btn" value="입찰하기">
				</form>
				
				
				
				<br>
				<br>
		</div>
	</div>
</body>
</html>
<jsp:include page="../module/footer.jsp"></jsp:include>
