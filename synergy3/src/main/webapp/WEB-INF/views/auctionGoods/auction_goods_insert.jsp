<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../module/top.jsp"></jsp:include>
<!DOCTYPE html>

<html>
<head>
<script>
	$(function() {

		$("#btn").click(function(){
			var title = $('#title');
			var name = $('#name');
			var content = $('#content');
			var fileImage = $('#fileImage').val();
			var minPrice = $('#minPrice');
			var buyPrice = $('#buyPrice');
			if($('#fileImage').val()==""){
				alert("사진을 첨부하여 주시기 바랍니다.");
				return false;
			}
			if (fileImage != "") {
			    var ext = fileImage.slice(fileImage.lastIndexOf(".") + 1).toLowerCase();
			    if (!(ext == "jpeg" || ext == "jpg" || ext == "png")) {
			        alert("이미지파일 (.jpg, .png, .jpeg ) 만 업로드 가능합니다.");
			        return false;
			    }
			}
			if($('#title').val()==""){
				alert("제목을 입력하여 주시기 바랍니다.");
				return false;
			}
			else if($('#name').val()==""){
				alert("상품명을 입력하여 주시기 바랍니다.");
				return false;
			}
			else if($('#content').val()==""){
				alert("내용을 입력하여 주시기 바랍니다.");
				return false;
			}
			else if($('#minPrice').val()==""){
				alert("최소가격을 입력하여 주시기 바랍니다.");
				return false;
			}
			else if($('#buyPrice').val()==""){
				alert("즉시구매가를 입력하여 주시기 바랍니다.");
				return false;
			}
			$('#frm').submit();
			
		});
	});
</script>
	 	
</head>
<body>
<div style="text-align:center;font-size:16px;">
		<br><br><br>
	<div class="container">
		<form action="${pageContext.request.contextPath}/auctionGoodsInsert" id="frm" method="post" enctype="multipart/form-data">
		<input type="hidden" value="${sessionScope.id}" name="userId">
			<table class="table table-bordered">
				<tbody>	
					<tr>	            
						<th class="active">카테고리</th>
						<td>
							<select name="smallCategoryNo">
								<option value="1">여성 의류</option>
								<option value="2">남성 의류</option>
								<option value="3">유아동 의류</option>
								<option value="4">노트북/PC</option>
								<option value="5">휴대용</option>
								<option value="6">주방가전</option>
								<option value="7">신발</option>
								<option value="8">가방</option>
								<option value="9">쥬얼리/시계</option>
							</select>
						</td>	                
					</tr>	            
					<tr>	            
						<th colspan="2" class="active">제목 </th>
						<td colspan="4"><input type="text" placeholder="제목을 입력하세요." id="title" name="auctionGoodsTitle" class="form-control"/></td>	                
					</tr>
					
					<tr>
						<th colspan="2" class="active">상품명</th>
							<td>
								<input type="text" placeholder="상품명을 입력하세요 " id="name" name="auctionGoodsName" class="form-control"/>
							</td>
					</tr>
					<tr>	            
						<th colspan="2" class="active">내용 </th>
						<td colspan="4"><textarea placeholder="내용을 입력하세요." id="content" rows="15" name="auctionGoodsContent" class="form-control"></textarea></td>	            
					</tr>
					<tr>	           
						<th colspan="2" class="active">사진파일 </th>
						<td colspan="4"><input type="file" name="fileImage" id="fileImage" class="form-control"></td>	            
					</tr>
					
					<tr>
						<th class="active">최소가</th>
							<td>	
								<input type="text" placeholder="숫자만 입력해주세요." id="minPrice" name="auctionGoodsMinPrice" class="form-control"/>
							</td>	                
						<th class="active">즉시구매가</th>
							<td>
								<input type="text" placeholder="즉시구매가를 입력해 주세요."  id="buyPrice" name="auctionGoodsInstanceBuyPrice" class="form-control"/>
							</td>	                
						<th class="active">입찰단위 (원)</th>
						<td>
							<select name="auctionGoodsBidUnit">
								<option value="100">100</option>
								<option value="500">500</option>
								<option value="1000">1000</option>
								<option value="2000">2000</option>
								<option value="5000">5000</option>
								<option value="10000">10000</option>
							</select>
						</td>	
					</tr>
						               
					<tr>
						<th class="active">입찰기간</th>
						<td><p class="form-control-static">3일</td>
						<th class="active">결제기간</th>
						<td><p class="form-control-static">3일</td>	                
					</tr>
					<tr>
						<th class="active">기부금계획서</th>
						<td>
							<select name="donationPlanNo">
								<c:forEach var="list" items="${list}">
									<option value="${list.donationPlanNo}">${list.donationPlanTitle}</option>
								</c:forEach>
							</select>
						</td>
					</tr>
		    	</tbody>
			</table>		
		 	<input type="button" value="등록" id="btn" class="pull-right"/>
		 	<br><br><br>
		 </form>
	</div>
	</div>	
</body>
</html>
<jsp:include page="../module/footer.jsp"></jsp:include>