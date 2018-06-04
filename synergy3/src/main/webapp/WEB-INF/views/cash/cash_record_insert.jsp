<%@ page language="java" contentType=""src/main/java/com/synergy/auction/cash/service/CashRecordDto.java"text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../module/top.jsp"></jsp:include>
<!DOCTYPE>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<script>
	//입력값이 숫자만 가능
	$(document).ready(function(){
		$("#cashRecordChange").keyup(function(){
			$(this).val($(this).val().replace(/[^0-9]/g,""));
		})		
	});
	</script>	
</head>
<body>
	<form class="form-horizontal" role="form" id="frm" name="frm" method="post" action="${pageContext.request.contextPath}/cashRecordInsert">
	       <br><h1 class="text-center">캐쉬 충전</h1><br>
            <div class="form-group" id="divCash">
                <label for="inputCash" class="col-lg-2 control-label">캐쉬 충전 금액</label>
                <div class="col-lg-8">
                    <input type="text" class="form-control onlyAlphabetAndNumber" name="cashRecordChange" id="cashRecordChange" data-rule-required="true" placeholder="금액(숫자)만 입력 가능합니다" maxlength="30" onKeyPress="return numkeyCheck(event)">
                </div>
            </div>
			<div class="form-group">
	            <div class="col-lg-offset-2 col-lg-8">
	                <input type="submit" value="충전하기">
				</div>
			</div>	
	</form>
</body>
</html>
<jsp:include page="../module/footer.jsp"></jsp:include>