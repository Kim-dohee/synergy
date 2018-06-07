<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../module/top.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
</head>
<body>
<div style="text-align:center;font-size:16px;">
		<br><br><br>
	<div class="container">
		<form action="write_ok.jsp" method="post" encType="multiplart/form-data">
			<table class="table table-bordered">
				<tbody>		            
					<tr>	            
						<th colspan="2" class="active">제목 </th>
						<td colspan="4"><input type="text" placeholder="제목을 입력하세요. " name="subject" class="form-control"/></td>	                
					</tr>
					<tr>	            
						<th colspan="2" class="active">내용 </th>
						<td colspan="4"><textarea cols="15" placeholder="내용을 입력하세요. " rows="10" name="content" class="form-control"></textarea></td>	            
					</tr>
					<tr>	           
						<th colspan="2" class="active">첨부파일 </th>
						<td colspan="4"><input type="text" placeholder="파일을 선택하세요. " name="filename" class="form-control"/></td>	            
					</tr>
					<tr>	            
						<th class="active">카테고리</th>
						<td>
							<select name="category">
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
						<th class="active">최소가</th>
						<td>	
							<input type="text" placeholder="숫자만 입력해주세요. " name="subject" class="form-control"/>
						</td>	                
						<th class="active">즉시구매가</th>
						<td>
							<input type="text" placeholder="즉시구매가를 입력해 주세요. " name="subject" class="form-control"/>
						</td>	                
					</tr>
					<tr>
						<th class="active">상품명</th>
						<td><input type="text" placeholder="제목을 입력하세요. " name="subject" class="form-control"/></td>	                
						<th class="active">입찰단위</th>
						<td><input type="text" placeholder="제목을 입력하세요. " name="subject" class="form-control"/></td>	                
						<th class="active">결제기간</th>
						<td><input type="text" placeholder="제목을 입력하세요. " name="subject" class="form-control"/></td>	                
					</tr>
					<tr>
						<th class="active">입찰기간</th>
						<td><input type="text" placeholder="제목을 입력하세요. " name="subject" class="form-control"/></td>	                
						<th class="active">입찰시작날짜</th>
						<td><input type="text" placeholder="제목을 입력하세요. " name="subject" class="form-control"/></td>	                
						<th class="active">입찰종료날짜</th>
						<td><input type="text" placeholder="제목을 입력하세요. " name="subject" class="form-control"/></td>	                
					</tr>
		    	</tbody>
			</table>		
            <input type="button" value="reset" class="pull-left"/>
            <input type="button" value="글 목록으로... " class="pull-right" onclick="javascript:location.href='list.jsp'"/>
		 	<input type="button" value="등록" onclick="sendData()" class="pull-right"/>
		 	<br><br><br>
		 </form>
	</div>
	</div>	
</body>
</html>
<jsp:include page="../module/footer.jsp"></jsp:include>