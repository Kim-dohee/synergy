<!-- [�赵��] -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../module/top.jsp"></jsp:include>
<!DOCTYPE>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>Insert title here</title>
	<script>
		$(document).ready(function(){
			
			//(����,����,��α� ��볯¥,��γ���,���� ) null�� ������� ����	
			$('#submit').click(function(event){
				if($("#donationPlanNo option:selected").val()==""){
					alert("��ȹ�� ��� ��  ������ �ۼ��Ҽ� �ֽ��ϴ�");
				}else if($('#donationSpendReportTitle').val()==""){
					alert("������ �Է��ϼ���");
				}else if($('#donationSpendReportContent').val()==""){
					alert("������ �Է��ϼ���");
				}else if($('#donationSpendPriceDate').val()==""){
					alert("��α� ��볯¥�� �Է��ϼ���");
				}else if($('#donationSpendReportRecord').val()==""){
					alert("��γ����� �Է��ϼ���");
				}else if($('#fileName').val().length <1) {
					alert('���� ÷�������� �����ϼ���');
				}else {
					//���� Ȯ���� Ȯ��
					var	fileExt = $('#fileName').val().split('.').pop().toLowerCase();
					if($.inArray(fileExt,['hwp','txt','rtf' ,'hwp' ,'asv' ,'pdf' ,'doc' ,'ppt' ,'mdb' ,'htm'])==-1){
						alert('��������(hwp,txt,rtf,hwp,asv,pdf,doc,ppt,mdb,htm)�� ���ε� �Ҽ� �ֽ��ϴ�')
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
	<h4>&nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-home" aria-hidden="true"></span>Ȩ > ��� > ���� > ���� ���</h4>
	<div style="text-align:center;font-size:16px;" class="container">
		<br><br><br>
		<img src="${pageContext.request.contextPath}/resources/image/reportInsert.png" width="75%" height="10%">
		<br><br><br> 
		<form action="${pageContext.request.contextPath}/donationSpendReportInsert" method="post" enctype="multipart/form-data">
			<table class="table table-bordered">
				<tbody>		            	           
		            <tr>	            
		                <th class="active">�ش� ��ȹ�� ��ȣ</th>
		                <td>
		                	<select name="donationPlanNo" id="donationPlanNo">
    							<option value="">��ȹ�� ��ȣ ����</option>
    							<c:forEach var="donationPlan" items="${list}">
    								<option value="${donationPlan.donationPlanNo}">${donationPlan.donationPlanNo}</option>		
    							</c:forEach>	
    						</select>
    					</td>	                
		            </tr>
		            <tr>	            
		                <th class="active">���� </th>
		                <td><input type="text" placeholder="������ �Է��ϼ���. " name="donationSpendReportTitle" id="donationSpendReportTitle" class="form-control"/></td>	                
		            </tr>
		            <tr>  	            
		                <th class="active">���� </th>
		                <td><textarea cols="10" placeholder="3000�� �̳��� �Է��ϼ��� " rows="30" name="donationSpendReportContent" id="donationSpendReportContent" class="form-control" maxlength="3000"></textarea></td>	            
		            </tr>
		            <tr>	            
		                <th class="active">��α� ��볯¥</th>
		                <td><input name="donationSpendPriceDate" id="donationSpendPriceDate" type="date">�̳�</td>	            
		            </tr>
		            <tr>  	            
	                <th class="active">��� ���� </th>
	                <td><textarea cols="10" placeholder="3000�� �̳��� �Է��ϼ��� " rows="30" name="donationSpendReportRecord" id="donationSpendReportRecord" class="form-control" maxlength="3000"></textarea></td>	            
		            </tr>
		            <tr>	           
		                <th class="active">���� ÷������ </th>
		                <td><input type="file" name="fileName" id="fileName"></td>	            
		            </tr>   
		    	</tbody>
			</table><br>		
		 	<div class="form-group">
			<div class="col-lg-offset-6 col-lg-2">
				<input type="button" class="btn btn-primary btn-lg" id="submit" value="���"><br><br><br>
			</div>	
			</div>
		 </form>
	</div>
</body>
</html>
<jsp:include page="../module/footer.jsp"></jsp:include>