<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../module/top.jsp"></jsp:include>


<!-- 본문 들어가는 부분 -->


<div style="background-color: #BDBDBD">
	<br> <br> <br> <br>
	<form class="form-horizontal" role="form" method="post"
		action="${pageContext.request.contextPath}/userUpdate" id="frm">
		<input type="hidden" name="userNo" value="${user.userNo}">
		<div class="form-group" id="divId">
			<label for="inputId" class="col-lg-2 control-label">아이디</label>
			<div class="col-lg-8">
				<input type="text" class="form-control onlyAlphabetAndNumber"
					value="${user.userId}" readonly name="userId" id="id"
					data-rule-required="true"
					placeholder="30자이내의 알파벳, 언더스코어(_), 숫자만 입력 가능합니다." maxlength="30">
			</div>
		</div>
		<div class="form-group" id="divPassword">
			<label for="inputPassword" class="col-lg-2 control-label">패스워드</label>
			<div class="col-lg-8">
				<input type="password" class="form-control" value="${user.userPw}"
					name="userPw" id="password" data-rule-required="true"
					placeholder="패스워드" maxlength="30">
			</div>
		</div>
		<div class="form-group" id="divPasswordCheck">
			<label for="inputPasswordCheck" class="col-lg-2 control-label">패스워드
				확인</label>
			<div class="col-lg-8">
				<input type="password" class="form-control" id="passwordCheck"
					data-rule-required="true" placeholder="패스워드 확인" maxlength="30">
			</div>
		</div>
		<div class="form-group" id="divName">
			<label for="inputName" class="col-lg-2 control-label">이름</label>
			<div class="col-lg-8">
				<input type="text" class="form-control onlyHangul"
					value="${user.userName}" readonly name="userName" id="name"
					data-rule-required="true" placeholder="한글만 입력 가능합니다."
					maxlength="15">
			</div>
		</div>
		<div class="form-group" id="divNickname">
			<label for="inputNickname" class="col-lg-2 control-label">별명</label>
			<div class="col-lg-8">
				<input type="text" class="form-control" value="${user.userNick}"
					name="userNick" id="nickname" data-rule-required="true"
					placeholder="별명" maxlength="15">
			</div>
		</div>
		<div class="form-group" id="divEmail">
			<label for="inputEmail" class="col-lg-2 control-label">이메일</label>
			<div class="col-lg-8">
				<input type="text" class="form-control" value="${user.userEmail}"
					name="userEmail" id="email" data-rule-required="true"
					placeholder="이메일" maxlength="40">
			</div>
		</div>
		<div class="form-group" id="divPhoneNumber">
			<label for="inputPhoneNumber" class="col-lg-2 control-label">휴대폰
				번호</label>
			<div class="col-lg-8">
				<input type="tel" class="form-control onlyNumber"
					value="${user.userPhone}" name="userPhone" id="phoneNumber"
					data-rule-required="true" placeholder="-를 제외하고 숫자만 입력하세요."
					maxlength="11">
			</div>
		</div>
		<div class="form-group">
			<div class="col-lg-offset-2 col-lg-10">
				<button type="button" class="btn btn-default" id="btn">수정 완료</button>
			</div>
		</div>
		<div class="form-group">
			<div class="col-lg-offset-2 col-lg-10">
				<button type="button" class="btn btn-default" id="delbtn">회원 탈퇴</button>
			</div>
		</div>
	</form>
	<br> <br> <br>
</div>
<script>
	$(function() {
		//------- 검사하여 상태를 class에 적용
		$('#password').keyup(function(event) {
			var divPassword = $('#divPassword');
			if ($('#password').val() == "") {
				divPassword.removeClass("has-success");
				divPassword.addClass("has-error");
			} else {
				divPassword.removeClass("has-error");
				divPassword.addClass("has-success");
			}
		});
		$('#passwordCheck').keyup(function(event) {
			var passwordCheck = $('#passwordCheck').val();
			var password = $('#password').val();
			var divPasswordCheck = $('#divPasswordCheck');
			if ((passwordCheck == "") || (password != passwordCheck)) {
				divPasswordCheck.removeClass("has-success");
				divPasswordCheck.addClass("has-error");
			} else {
				divPasswordCheck.removeClass("has-error");
				divPasswordCheck.addClass("has-success");
			}
		});
		$('#name').keyup(function(event) {
			var divName = $('#divName');
			if ($.trim($('#name').val()) == "") {
				divName.removeClass("has-success");
				divName.addClass("has-error");
			} else {
				divName.removeClass("has-error");
				divName.addClass("has-success");
			}
		});
		$('#nickname').keyup(function(event) {
			var divNickname = $('#divNickname');
			if ($.trim($('#nickname').val()) == "") {
				divNickname.removeClass("has-success");
				divNickname.addClass("has-error");
			} else {
				divNickname.removeClass("has-error");
				divNickname.addClass("has-success");
			}
		});
		$('#email').keyup(function(event) {
			var divEmail = $('#divEmail');
			if ($.trim($('#email').val()) == "") {
				divEmail.removeClass("has-success");
				divEmail.addClass("has-error");
			} else {
				divEmail.removeClass("has-error");
				divEmail.addClass("has-success");
			}
		});
		$('#phoneNumber').keyup(function(event) {
			var divPhoneNumber = $('#divPhoneNumber');
			if ($.trim($('#phoneNumber').val()) == "") {
				divPhoneNumber.removeClass("has-success");
				divPhoneNumber.addClass("has-error");
			} else {
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
			var divNickname = $('#divNickname');
			var divEmail = $('#divEmail');
			var divPhoneNumber = $('#divPhoneNumber');

			//패스워드 검사
			if ($('#password').val() == "") {
				alert("패스워드를 입력하여 주시기 바랍니다.");
				divPassword.removeClass("has-success");
				divPassword.addClass("has-error");
				$('#password').focus();
				return false;
			} else {
				divPassword.removeClass("has-error");
				divPassword.addClass("has-success");
			}
			//패스워드 확인
			if ($('#passwordCheck').val() == "") {
				alert("패스워드 확인을 입력하여 주시기 바랍니다.");
				divPasswordCheck.removeClass("has-success");
				divPasswordCheck.addClass("has-error");
				$('#passwordCheck').focus();
				return false;
			} else {
				divPasswordCheck.removeClass("has-error");
				divPasswordCheck.addClass("has-success");
			}
			//패스워드 비교
			if ($('#password').val() != $('#passwordCheck').val()
					|| $('#passwordCheck').val() == "") {
				alert("패스워드가 일치하지 않습니다.");
				divPasswordCheck.removeClass("has-success");
				divPasswordCheck.addClass("has-error");
				$('#passwordCheck').focus();
				return false;
			} else {
				divPasswordCheck.removeClass("has-error");
				divPasswordCheck.addClass("has-success");
			}

			//이름
			if ($('#name').val() == "") {
				alert("이름을 입력하여 주시기 바랍니다.");
				divName.removeClass("has-success");
				divName.addClass("has-error");
				$('#name').focus();
				return false;
			} else {
				divName.removeClass("has-error");
				divName.addClass("has-success");
			}
			//별명
			if ($('#nickname').val() == "") {
				alert("별명을 입력하여 주시기 바랍니다.");
				divNickname.removeClass("has-success");
				divNickname.addClass("has-error");
				$('#nickname').focus();
				return false;
			} else {
				divNickname.removeClass("has-error");
				divNickname.addClass("has-success");
			}
			//이메일
			if ($('#email').val() == "") {
				alert("이메일을 입력하여 주시기 바랍니다.");
				divEmail.removeClass("has-success");
				divEmail.addClass("has-error");
				$('#email').focus();
				return false;
			} else {
				divEmail.removeClass("has-error");
				divEmail.addClass("has-success");
			}
			//휴대폰 번호
			if ($('#phoneNumber').val() == "") {
				alert("휴대폰 번호를 입력하여 주시기 바랍니다.");
				divPhoneNumber.removeClass("has-success");
				divPhoneNumber.addClass("has-error");
				$('#phoneNumber').focus();
				return false;
			} else {
				divPhoneNumber.removeClass("has-error");
				divPhoneNumber.addClass("has-success");
			}
			alert("수정 완료");
    		$('#frm').submit();
		});
		$("#delbtn").click(function(){
			var result = confirm('정말로 탈퇴하시겠습니까?????????'); 
				if(result){
					alert("확인 버튼을 눌렀습니다.");
					location.href = '${pageContext.request.contextPath}/userDelete';
				} else {
					alert("취소 버튼을 눌렀습니다.");
				}
		});

	});
</script>
<jsp:include page="../module/footer.jsp"></jsp:include>