<!-- [김도희] -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:include page="../module/top.jsp"></jsp:include>
<!DOCTYPE>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>Insert title here</title>
	<script>
		$(document).ready(function(){
			
			//(제목,내용,기부금 사용날짜,기부내역,파일 ) null값 허용하지 않음	
			$('#submit').click(function(event){
					
				if($('#donationSpendReportTitle').val()==""){
					alert("제목을 입력하세요");
				}else if($('#donationSpendReportContent').val()==""){
					alert("내용을 입력하세요");
				}else if($('#donationSpendPriceDate').val()==""){
					alert("기부금 사용날짜를 입력하세요");
				}else if($('#donationSpendReportRecord').val()==""){
					alert("기부내역을 입력하세요");
				}else if($('#fileName').val().length <1) {
					alert('보고서 첨부파일을 선택하세요');
				}else {
					//파일 확장자 확인
					var	fileExt = $('#fileName').val().split('.').pop().toLowerCase();
					if($.inArray(fileExt,['hwp','txt','rtf' ,'hwp' ,'asv' ,'pdf' ,'doc' ,'ppt' ,'mdb' ,'htm'])==-1){
						alert('문서파일(hwp,txt,rtf,hwp,asv,pdf,doc,ppt,mdb,htm)만 업로드 할수 있습니다')
					 } else {
							$("#submit").attr("type","submit");
					 } 
				}
			}); 
		});
	</script>
</head>
<body>
	<br><br><br>
	<h4>&nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-home" aria-hidden="true"></span>홈 > 기부 > 보고서 > 보고서 등록</h4>
	<div style="text-align:center;font-size:16px;" class="container">
		<br><br><br>
		<img src="${pageContext.request.contextPath}/resources/image/reportInsert.png" width="75%" height="10%">
		<br><br><br> 
		<form action="${pageContext.request.contextPath}/donationSpendReportInsert" method="post" enctype="multipart/form-data">
			<table class="table table-bordered">
				<tbody>		            	           
		            <tr>	            
		                <th class="active">제목 </th>
		                <td><input type="text" placeholder="제목을 입력하세요. " name="donationSpendReportTitle" id="donationSpendReportTitle" class="form-control"/></td>	                
		            </tr>
		            <tr>  	            
		                <th class="active">내용 </th>
		                <td><textarea cols="10" placeholder="3000자 이내에 입력하세요 " rows="30" name="donationSpendReportContent" id="donationSpendReportContent" class="form-control" maxlength="3000"></textarea></td>	            
		            </tr>
		            <tr>	            
		                <th class="active">기부금 사용날짜</th>
		                <td><input name="donationSpendPriceDate" id="donationSpendPriceDate" type="date">이내</td>	            
		            </tr>
		            <tr>  	            
	                <th class="active">기부 내역 </th>
	                <td><textarea cols="10" placeholder="3000자 이내에 입력하세요 " rows="30" name="donationSpendReportRecord" id="donationSpendReportRecord" class="form-control" maxlength="3000"></textarea></td>	            
		            </tr>
		            <tr>	           
		                <th class="active">보고서 첨부파일 </th>
		                <td><input type="file" name="fileName" id="fileName"></td>	            
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