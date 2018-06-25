<!-- [김도희] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../module/top.jsp"></jsp:include>
<!DOCTYPE html>

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
	<br><br><br>
	<h4>&nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-home" aria-hidden="true"></span>홈 > 마이페이지 > 캐쉬 > 캐쉬충전</h4>
	<br><br><br><br><h4>&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/home"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>홈</a></h4>
	<div style="text-align: center; font-size: 16px" class="container">
		<form class="form-horizontal" role="form" id="frm" name="frm"
			method="post"
			action="${pageContext.request.contextPath}/cashRecordInsert">
			<br>
			<h1 class="text-center">캐쉬 충전</h1><br><br>
			<h3>캐시를 충전하면 현금보다 더 편리하게 사용하실 수 있습니다</h3><br><br>
			<h5>
				캐시 충전신청 후 입금 하였으나 1시간 이후로도 정상적으로 캐시 충전이 되지 않을 경우
				<span style="color: blue">일대일 상담</span>으로 문의바랍니다
			</h5><br><br><br>
			<table class="table table-bordered">
				<tbody>
					<tr>
						<th class="active">입금방법</th>
						<td><input type="radio" name="accountMethod" value="무통장 입금"
							checked="checked" />무통장 입금</td>
					</tr>
					<tr>
						<th class="active">캐쉬 충전 금액</th>
						<td><input type="text"
							class="form-control onlyAlphabetAndNumber"
							name="cashRecordChange" data-rule-required="true"
							placeholder="금액(숫자)만 입력 가능합니다" maxlength="30"
							id="cashRecordChange"
							onKeyPress="return numkeyCheck(event)"></td>
					</tr>
					<tr>
						<th class="active">은행명</th>
						<td><select name="accountBankName">
								<option value="">은행명</option>
								<option value="국민">국민</option>
								<option value="농협">농협</option>
								<option value="우리">우리</option>
								<option value="신한">신한</option>
						</select></td>
					</tr>
					<tr>
						<th class="active">입금 예정인</th>
						<td><input type="text"
							class="form-control onlyAlphabetAndNumber"
							name="accountDepositName" id="accountDepositName"
							data-rule-required="true" placeholder="EX) 박근혜">
						</td>
					</tr>
				</tbody>
			</table>
			<div class="form-group">
				<div class="col-lg-offset-2 col-lg-8">
					<br>
					<input type="submit" value="충전하기">
				</div>
			</div>
			<br>
			<br>
		</form>
	</div>
</body>
</html>
<jsp:include page="../module/footer.jsp"></jsp:include>