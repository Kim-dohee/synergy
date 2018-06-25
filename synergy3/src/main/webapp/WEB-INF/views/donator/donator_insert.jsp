<!-- [김도희] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../module/top.jsp"></jsp:include>
<!DOCTYPE html>

<html>
<head>
<script>
$(function(){
	var idck = 0;
    //------- 검사하여 상태를 class에 적용
	$('#id').keyup(function(event){
		var divId = $('#divId');
		if($('#id').val()==""){
			divId.removeClass("has-success");
			divId.addClass("has-error");
		}else{
			divId.removeClass("has-error");
			divId.addClass("has-success");
		}
	});
     
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
	$('#businessno').keyup(function(event){
		var divBusinessno = $('#divBusinessno');
		if($.trim($('#businessno').val())==""){
			divBusinessno.removeClass("has-success");
			divBusinessno.addClass("has-error");
		}else{
			divBusinessno.removeClass("has-error");
			divBusinessno.addClass("has-success");
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
	$("#btn").click(function( event ) {
		var divId = $('#divId');
		var divPassword = $('#divPassword');
		var divPasswordCheck = $('#divPasswordCheck');
		var divName = $('#divName');
		var divBusinessno = $('#divBusinessno');
		var divHomepage = $('#divHomepage');
		var divPhoneNumber = $('#divPhoneNumber');
		
		//아이디 검사
		if($('#id').val()==""){
			alert("아이디를 입력하여 주시기 바랍니다.");
			divId.removeClass("has-success");
			divId.addClass("has-error");
			$('#id').focus();
			return false;
		}else{
			divId.removeClass("has-error");
			divId.addClass("has-success");
		}
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
			alert("기부단체 이름을 입력하여 주시기 바랍니다.");
			divName.removeClass("has-success");
			divName.addClass("has-error");
			$('#name').focus();
			return false;
		}else{
			divName.removeClass("has-error");
			divName.addClass("has-success");
		}
		//별명
		if($('#businessno').val()==""){
			alert("사업번호를 입력하여 주시기 바랍니다.");
			divBusinessno.removeClass("has-success");
			divBusinessno.addClass("has-error");
			$('#businessno').focus();
			return false;
		}else{
			divBusinessno.removeClass("has-error");
			divBusinessno.addClass("has-success");
		}
		//이메일
		if($('#Homepage').val()==""){
			alert("홈페이지를 입력하세요.");
			divHomepage.removeClass("has-success");
			divHomepage.addClass("has-error");
			$('#Homepage').focus();
			return false;
		}else{
			divHomepage.removeClass("has-error");
			divHomepage.addClass("has-success");
		}
		 
		//휴대폰 번호
		if($('#phoneNumber').val()==""){
			alert("기부단체 전화 번호를 입력하여 주시기 바랍니다.");
			divPhoneNumber.removeClass("has-success");
			divPhoneNumber.addClass("has-error");
			$('#phoneNumber').focus();
			return false;
		}else{
			divPhoneNumber.removeClass("has-error");
			divPhoneNumber.addClass("has-success");
		}
        if(idck==0){
            alert('아이디 중복체크를 해주세요');
            return false;
        }else{
        	alert("회원가입 완료");
    		$('#frm').submit();
        }
	});

    
	//---------id 중복체크 ajax
	//idck 버튼을 클릭했을 때 
	$("#idcheck").click(function() {
		
		//userid 를 param.
		var id =  $("#id").val(); 
		$.ajax({
			async: true,
			type : 'POST',
			data : id,
			url : "${pageContext.request.contextPath}/idcheck",
			dataType : "json",
			contentType: "application/json; charset=UTF-8",
			success : function(data){
					if (data.cnt > 0) {
						alert("아이디가 존재합니다. 다른 아이디를 입력해주세요.");
						//아이디가 존제할 경우 빨깡으로 , 아니면 파랑으로 처리하는 디자인
						$("#divId").addClass("has-error");
						$("#divId").removeClass("has-success");
					} else {
						alert("사용가능한 아이디입니다.");
						//아이디가 존제할 경우 빨깡으로 , 아니면 파랑으로 처리하는 디자인
						$("#divId").addClass("has-success");
						$("#divId").removeClass("has-error");
						$("#userpwd").focus();
						idck = 1;
					}
			},
			error : function(error) {
			alert("error : " + error);
			}
		});
	});
});
 
</script>
</head>
<body>
<br><br><br><br><h4>&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/home"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>홈</a></h4>
	<div style="font-size: 16px; text-align: center">
		<br><br><br><img src="${pageContext.request.contextPath}/resources/image/join.png" width="50%" height="10%"><br><br><br>
		<br><h1 class="text-center">기부단체 회원가입</h1><br>
		<form class="form-horizontal" role="form" id="frm" name="frm"
			method="post"
			action="${pageContext.request.contextPath}/donatorInsert">
			<br>
			<div class="form-group" id="divId">
				<label for="inputId" class="col-lg-4 control-label">아이디</label>
				<div class="col-lg-4">
					<input type="text" class="form-control onlyAlphabetAndNumber" name="donatorId" id="id" data-rule-required="true" placeholder="30자이내의 알파벳, 언더스코어(_), 숫자만 입력 가능합니다." maxlength="30">
				</div>
			</div>
			<div class="form-group">
				<label for="inputId" class="col-lg-4 control-label"></label>
				<div class="col-lg-4">
					<input type="button" class="btn" value="아이디 중복확인" name="idcheck" id="idcheck">
				</div>
			</div>
			<div class="form-group" id="divPassword">
				<label for="inputPassword" class="col-lg-4 control-label">패스워드</label>
				<div class="col-lg-4">
					<input type="password" class="form-control" name="donatorPw" id="password" data-rule-required="true" placeholder="패스워드" maxlength="30">
				</div>
			</div>
			<div class="form-group" id="divPasswordCheck">
				<label for="inputPasswordCheck" class="col-lg-4 control-label">패스워드 확인</label>
				<div class="col-lg-4">
					<input type="password" class="form-control" id="passwordCheck" data-rule-required="true" placeholder="패스워드 확인" maxlength="30">
				</div>
			</div>
			<div class="form-group" id="divName">
				<label for="inputName" class="col-lg-4 control-label">기부단체이름</label>
				<div class="col-lg-4">
					<input type="text" class="form-control onlyHangul" name="donatorName" id="name" data-rule-required="true" placeholder="한글만 입력 가능합니다." maxlength="15">
				</div>
			</div>

			<div class="form-group" id="divBusinessno">
				<label for="intupBusinessno" class="col-lg-4 control-label">사업번호</label>
				<div class="col-lg-4">
					<input type="tel" class="form-control" name="donatorBusinessNo" id="businessno" data-rule-required="true" placeholder="별명" maxlength="15">
				</div>
			</div>

			<div class="form-group" id="divHomepage">
				<label for="inputHomepage" class="col-lg-4 control-label">홈페이지</label>
				<div class="col-lg-4">
					<input type="text" class="form-control" name="donatorHomepage" id="Homepage" data-rule-required="true" placeholder="이메일" maxlength="40">
				</div>
			</div>
			<div class="form-group" id="divPhoneNumber">
				<label for="inputPhoneNumber" class="col-lg-4 control-label">기부단체 전화번호</label>
				<div class="col-lg-4">
					<input type="tel" class="form-control onlyNumber" name="donatorTelephone" id="phoneNumber" data-rule-required="true" placeholder="-를 제외하고 숫자만 입력하세요." maxlength="11">
				</div>
			</div>
			<div class="form-group">
				<div class="col-lg-4"></div>
				<div class="col-lg-4">
					<input type="submit" class="btn btn-primary" id="btn" value="회원가입">
				</div>
				<div class="col-lg-4"></div>
			</div>
		</form>
		<br> <br> <br>
	</div>
</body>
</html>
<jsp:include page="../module/footer.jsp"></jsp:include>