<!-- [김도희] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../module/top.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<script>
		$(document).ready(function(){
			//모집목표액 숫자만 허용
			$("#donationPlanGoalPrice").keyup(function(){
				$(this).val($(this).val().replace(/[^0-9]/g,""));
			});
			//(제목,내용,목적,모집목표액,기부금 사용기간,파일 ) null값 허용하지 않음	
			$('#submit').click(function(event){
					
				if($('#donationPlanTitle').val()==""){
					alert("제목을 입력하세요");
				}else if($('#donationPlanContent').val()==""){
					alert("내용을 입력하세요");
				}else if($('#donationPlanPurpose').val()==""){
					alert("목적을 입력하세요");
				}else if($('#donationPlanGoalPrice').val()==""){
					alert("모집목표액을 입력하세요");
				}else if($('#donationPlanUseTerm').val()==""){
					alert("기부금사용기간을 입력하세요");
				}else if($('#fileName').val().length <1) {
					alert('파일을 선택하세요');
				}else {
					$("#submit").attr("type","submit");
				}
			});
		
		});
	</script>
</head>
<body>
	<br><br><br>
	<h4>&nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-home" aria-hidden="true"></span>홈 > 기부 > 계획서 > 계획서 등록</h4>
	<div style="text-align:center;font-size:16px;" class="container">
		<br><br><br>
		<img src="${pageContext.request.contextPath}/resources/image/donationplaninsert.png" width="50%" height="10%">
		<br><br><br> 
		<form action="${pageContext.request.contextPath}/donationPlanInsert" method="post" enctype="multipart/form-data">
			<table class="table table-bordered">
				<tbody>		            	           
		            <tr>	            
		                <th class="active">제목 </th>
		                <td><input type="text" placeholder="제목을 입력하세요. " name="donationPlanTitle" id="donationPlanTitle" class="form-control"/></td>	                
		            </tr>
		            <tr>  	            
	                <th class="active">내용 </th>
	                <td><textarea cols="10" placeholder="500자 이내에 입력하세요 " rows="30" name="donationPlanContent" id="donationPlanContent" class="form-control" maxlength="500"></textarea></td>	            
		            </tr>
		            <tr>	            
		                <th class="active">목적 </th>
		                <td><textarea cols="10" placeholder="100자 이내에 입력하세요" rows="10" name="donationPlanPurpose" id="donationPlanPurpose" class="form-control" maxlength="30"></textarea></td>	            
		            </tr>
		            <tr>	            
		                <th class="active">모집 목표액</th>
		                <td><input type="text" placeholder="숫자만 입력하세요" id="donationPlanGoalPrice" name="donationPlanGoalPrice" class="form-control"/></td>	            
		            </tr>
		            <tr>	            
		                <th class="active">기부금 사용기간</th>
		                <td><input name="donationPlanUseTerm" id="donationPlanUseTerm" type="date">이내</td>	            
		            </tr>
		            <tr>	           
		                <th class="active">첨부파일 </th>
		                <td><input type="file" name="fileName" id="fileName" class="fileName"></td>	            
		            </tr>    
		    	</tbody>
			</table><br>		
		 	<div class="form-group">
			<div class="col-lg-offset-6 col-lg-2">
				<input type="button" class="btn btn-primary btn-lg" id="submit" value="등록"><br><br><br>
			</div>	
			</div>
		 </form>
	</div>
</body>
</html>
<jsp:include page="../module/footer.jsp"></jsp:include>