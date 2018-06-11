<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<h1>입찰창</h1>
			<tr id = "totalcash">보유캐쉬:</>캐쉬</tr>
			<div class="table-responsive">
				<table class="table table-hover">

					<thead>
							<h2>입찰하기</h2>
							<th>품목명:  </th>
							<th>시작가격:<fmt:formatNumber 
									groupingUsed="true" />원
							</th>
							<th>입찰단위:<fmt:formatNumber 
									groupingUsed="true" />원
							</th>
						</tr>
						<tr>
							<div>
								<td>
									<form id = "addForm" role="form" id="priceaddForm"
										action="${pageContext.request.contextPath}/bid/price"
										method="post">
										<div class="form-group">
											<label for="bidPrice">입찰금액</label> <input 
												class="form-control" id="bidPrice" name="bidPrice"
												placeholder="시작가 <fmt:formatNumber groupingUsed="true"/>원">
												<input type="hidden" name="auctionGoodsNo" >
												<input type="hidden" name="userId" >
												<input type="hidden" name="auctionGoodsName">
												<input type="hidden" id="auctionGoodsBidUnit" name="auctionGoodsBidUnit" >
												<input type="hidden" id="auctionGoodsStartPrice" name="auctionGoodsMinPrice" >								
											<!--   <button name = "addbutton" type="submit">입찰</button> -->
												<input class="btn btn-default" id="addButton" type="button" value="입찰"/>
										</div>
									</form>
								</td>
							</div>
						</tr>
					</thead>
					<tbody>
						
					</tbody>
				</table>
			</div>
</body>
</html>