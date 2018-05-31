<%-- <!-- [김도희] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/donatorInsert" method="post">
		donatorId <input type="text" name="donatorId"><br>
		donatorPw <input type="text" name="donatorPw"><br>
		donatorBusinessNo <input type="text" name="donatorBusinessNo"><br>
		donatorName <input type="text" name="donatorName"><br>
		donatorTelephone <input type="text" name="donatorTelephone"><br>
		donatorHomepage <input type="text" name="donatorHomepage"><br>
		<input type="submit" value="입력">
	</form>
</body>
</html> --%>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../module/top.jsp"></jsp:include>


                <!-- 본문 들어가는 부분 -->
                 
 
 <div style="background-color:#BDBDBD">
 <br> <br> <br> <br>
	<form class="form-horizontal" role="form" method="post" action="${pageContext.request.contextPath}/donatorUpdate">
	<input type="hidden" name="donatorNo" value="${donator.donatorNo}">
		<div class="form-group" id="divId">
			<label for="inputId" class="col-lg-2 control-label">아이디</label>
				<div class="col-lg-8">
					<input type="text" class="form-control onlyAlphabetAndNumber" value="${donator.donatorId}" readonly name="donatorId" id="id" data-rule-required="true" placeholder="30자이내의 알파벳, 언더스코어(_), 숫자만 입력 가능합니다." maxlength="30">
				</div>
		</div>
		<div class="form-group" id="divPassword">
			<label for="inputPassword" class="col-lg-2 control-label">패스워드</label>
				<div class="col-lg-8">
					<input type="password" class="form-control" value="${donator.donatorPw}" name="donatorPw" id="password" data-rule-required="true" placeholder="패스워드" maxlength="30">
				</div>
		</div>
 		<div class="form-group" id="divPasswordCheck">
			<label for="inputPasswordCheck" class="col-lg-2 control-label">패스워드 확인</label>
				<div class="col-lg-8">
					<input type="password" class="form-control" id="passwordCheck" data-rule-required="true" placeholder="패스워드 확인" maxlength="30">
				</div>
			</div>
		<div class="form-group" id="divName">
			<label for="inputName" class="col-lg-2 control-label">기부단체이름</label>
				<div class="col-lg-8">
					<input type="text" class="form-control onlyHangul" value="${donator.donatorName}" readonly name="donatorName" id="name" data-rule-required="true" placeholder="한글만 입력 가능합니다." maxlength="15">
				</div>
		</div>
		<div class="form-group" id="divBusinessNo">
			<label for="inputBusinessNo" class="col-lg-2 control-label">사업번호</label>
				<div class="col-lg-8">
					<input type="text" class="form-control" value="${donator.donatorBusinessNo}" name="donatorBusinessNo" id=BusinessNo data-rule-required="true" placeholder="별명" maxlength="15">
				</div>
		</div>
		<div class="form-group" id="divHomepage">
			<label for="inputHomepage" class="col-lg-2 control-label">홈페이지</label>
				<div class="col-lg-8">
					<input type="text" class="form-control" value="${donator.donatorHomepage}" name="donatorHomepage" id="Homepage" data-rule-required="true" placeholder="이메일" maxlength="40">
				</div>
		</div>
		<div class="form-group" id="divPhoneNumber">
			<label for="inputPhoneNumber" class="col-lg-2 control-label">기부단체 전화번호</label>
				<div class="col-lg-8">
					<input type="tel" class="form-control onlyNumber" value="${donator.donatorTelephone}" name="donatorTelephone" id="phoneNumber" data-rule-required="true" placeholder="-를 제외하고 숫자만 입력하세요." maxlength="11">
				</div>
		</div>
		<!-- <div class="form-group">
                <label for="inputPhoneNumber" class="col-lg-2 control-label">성별</label>
                <div class="col-lg-10">
                    <select class="form-control" id="gender">
                        <option value="M">남</option>
                        <option value="F">여</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="inputEmailReceiveYn" class="col-lg-2 control-label">이메일 수신여부</label>
                <div class="col-lg-10">
                    <label class="radio-inline">
                        <input type="radio" id="emailReceiveYn" name="emailReceiveYn" value="Y" checked> 동의합니다.
                    </label>
                    <label class="radio-inline">
                        <input type="radio" id="emailReceiveYn" name="emailReceiveYn" value="N"> 동의하지 않습니다.
                    </label>
                </div>
            </div>
            <div class="form-group">
                <label for="inputPhoneNumber" class="col-lg-2 control-label">SMS 수신여부</label>
                <div class="col-lg-10">
                    <label class="radio-inline">
                        <input type="radio" id="smsReceiveYn" name="smsReceiveYn" value="Y" checked> 동의합니다.
                    </label>
                    <label class="radio-inline">
                        <input type="radio" id="smsReceiveYn" name="smsReceiveYn" value="N"> 동의하지 않습니다.
                    </label>
                </div>
            </div> -->
		<div class="form-group">
                <div class="col-lg-offset-2 col-lg-10">
                    <button type="submit" class="btn btn-default">Sign in</button>
			</div>
            </div>
        </form>
        <br>
        <br>
        <br>
</div>
<script>

$(function(){
    //------- 검사하여 상태를 class에 적용
	$('#password').keyup(function(event){
		var divPassword = $('#divPassword');
		if($('#password').val()==""){
			divPassword.removeClass("has-success");
			divPassword.addClass("has-error");
		}else{
			divPassword.removeClass("has-error");
			divPassword.addClass("has-success");
		}
	});
	$('#passwordCheck').keyup(function(event){
		var passwordCheck = $('#passwordCheck').val();
		var password = $('#password').val();
		var divPasswordCheck = $('#divPasswordCheck');
		if((passwordCheck=="") || (password!=passwordCheck)){
			divPasswordCheck.removeClass("has-success");
			divPasswordCheck.addClass("has-error");
		}else{
			divPasswordCheck.removeClass("has-error");
			divPasswordCheck.addClass("has-success");
		}
	});
	$('#name').keyup(function(event){
		var divName = $('#divName');
		if($.trim($('#name').val())==""){
			divName.removeClass("has-success");
			divName.addClass("has-error");
		}else{
			divName.removeClass("has-error");
			divName.addClass("has-success");
		}
	});
	$('#BusinessNo').keyup(function(event){
		var divdonatorBusinessNo = $('#BusinessNo');
		if($.trim($('#BusinessNo').val())==""){
			divBusinessNo.removeClass("has-success");
			divBusinessNo.addClass("has-error");
		}else{
			divBusinessNo.removeClass("has-error");
			divBusinessNo.addClass("has-success");
		}
	});
	$('#Homepage').keyup(function(event){
		var divHomepage = $('#divHomepage');
		if($.trim($('#Homepage').val())==""){
			divHomepage.removeClass("has-success");
			divHomepage.addClass("has-error");
		}else{
			divHomepage.removeClass("has-error");
			divHomepage.addClass("has-success");
		}
	});
	$('#phoneNumber').keyup(function(event){
		var divPhoneNumber = $('#divPhoneNumber');
		if($.trim($('#phoneNumber').val())==""){
			divPhoneNumber.removeClass("has-success");
			divPhoneNumber.addClass("has-error");
		}else{
			divPhoneNumber.removeClass("has-error");
			divPhoneNumber.addClass("has-success");
		}
	});
	//------- validation 검사
	$( "form" ).submit(function( event ) {
		var divId = $('#divId');
		var divPassword = $('#divPassword');
		var divPasswordCheck = $('#divPasswordCheck');
		var divName = $('#divName');
		var divBusinessNo = $('#divBusinessNo');
		var divHomepage = $('#divHomepage');
		var divPhoneNumber = $('#divPhoneNumber');
		
		//패스워드 검사
		if($('#password').val()==""){
		alert("패스워드를 입력하여 주시기 바랍니다.");
			divPassword.removeClass("has-success");
			divPassword.addClass("has-error");
			$('#password').focus();
			return false;
		}else{
		divPassword.removeClass("has-error");
		divPassword.addClass("has-success");
		}
		//패스워드 확인
		if($('#passwordCheck').val()==""){
			alert("패스워드 확인을 입력하여 주시기 바랍니다.");
			divPasswordCheck.removeClass("has-success");
			divPasswordCheck.addClass("has-error");
			$('#passwordCheck').focus();
			return false;
		}else{
			divPasswordCheck.removeClass("has-error");
			divPasswordCheck.addClass("has-success");
		}
		//패스워드 비교
		if($('#password').val()!=$('#passwordCheck').val() || $('#passwordCheck').val()==""){
			alert("패스워드가 일치하지 않습니다.");
			divPasswordCheck.removeClass("has-success");
			divPasswordCheck.addClass("has-error");
			$('#passwordCheck').focus();
			return false;
		}else{
			divPasswordCheck.removeClass("has-error");
			divPasswordCheck.addClass("has-success");
		}
		 
		//이름
		if($('#name').val()==""){
			alert("이름을 입력하여 주시기 바랍니다.");
			divName.removeClass("has-success");
			divName.addClass("has-error");
			$('#name').focus();
			return false;
		}else{
			divName.removeClass("has-error");
			divName.addClass("has-success");
		}
		//별명
		if($('#BusinessNo').val()==""){
			alert("별명을 입력하여 주시기 바랍니다.");
			divBusinessNo.removeClass("has-success");
			divBusinessNo.addClass("has-error");
			$('#BusinessNo').focus();
			return false;
		}else{
			divNickname.removeClass("has-error");
			divNickname.addClass("has-success");
		}
		//이메일
		if($('#Homepage').val()==""){
			alert("홈페이지를 입력하여 주시기 바랍니다.");
			divHomepage.removeClass("has-success");
			divHomepage.addClass("has-error");
			$('#Homepage').focus();
			return false;
		}else{
			divEmail.removeClass("has-error");
			divEmail.addClass("has-success");
		}
		//휴대폰 번호
		if($('#phoneNumber').val()==""){
			alert("휴대폰 번호를 입력하여 주시기 바랍니다.");
			divPhoneNumber.removeClass("has-success");
			divPhoneNumber.addClass("has-error");
			$('#phoneNumber').focus();
			return false;
		}else{
			divPhoneNumber.removeClass("has-error");
			divPhoneNumber.addClass("has-success");
		}
	     
		alert("수정 완료");
	});
});
 
</script>
<jsp:include page="../module/footer.jsp"></jsp:include>