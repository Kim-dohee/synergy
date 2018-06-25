<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../module/top.jsp"></jsp:include>
<!DOCTYPE html>

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>Insert title here</title>
	<script>
	$(function(){
		$("#btn").click(function( event ) {
			var provision = $('#provision');
			var memberInfo = $('#memberInfo');	
			
			//회원가입약관
			if($('#provisionYn:checked').val()=="N"){
				alert("회원가입약관에 동의하여 주시기 바랍니다."); 
				provision.removeClass("has-success");
				provision.addClass("has-error");
				$('#provisionYn').focus();
				return false;
			}else{
				provision.removeClass("has-error");
				provision.addClass("has-success");
			}
			 
			//개인정보취급방침
			if($('#memberInfoYn:checked').val()=="N"){
				alert("개인정보취급방침에 동의하여 주시기 바랍니다.");
				memberInfo.removeClass("has-success");
				memberInfo.addClass("has-error");
				$('#memberInfoYn').focus();
				return false;
			}else{
				memberInfo.removeClass("has-error");
				memberInfo.addClass("has-success");
			}
		})
	})
	</script>
</head>
<body>
<br><br><br><br><h4>&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/home"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>홈</a></h4>
	<div style="text-align:center;font-size:16px;">
		<form class="form-horizontal" role="form" id="frm" name="frm" method="post" action="${pageContext.request.contextPath}/userInsertView">
			<br><br><br><img src="${pageContext.request.contextPath}/resources/image/joinagreement.png" width="50%" height="10%"><br>
			<br><br><h1 class="text-center">일반회원 회원가입</h1><br>
			회원가입을 위해서 아래의 이용약관 및 개인정보취급방침을 읽고 동의해 주시기 바랍니다.<br><br><br>
			<div class="form-group">
				<label for="provision" class="col-lg-12 control-label text-center">회원가입약관</label><br><br><br>
				<div class="col-lg-3 "></div>
				<div class="col-lg-6 " id="planInfo">
					<textarea class="form-control" rows="20" style="font-size:14px;" readonly>
                  제 1 장 총칙




제 1 조 (목적)

이 약관은 주식회사 이웃닷컴(이하 회사)이 제공하는 e알리미의 이용과 관련하여 회사와 소속기관, 그리고 회원과의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.




제 2 조 (정의) 

이 약관에서 사용하는 용어의 정의는 다음과 같습니다. 

1. "서비스"라 함은 구현되는 단말기(PC, TV, 휴대형 단말기 등의 각종 유/무선 장치를 포함)와 상관없이 회원이 이용할 수 있는 e알리미 및 e알리미 제반 서비스를 의미합니다. 

2. "기관"이라 함은 회사와 이용 계약을 체결하고 서비스를 제공 받는 조직, 단체를 의미하며 기관은 기관에 속한 회원 및 서비스 이용에 대한 관리 권한을 가집니다.

3. "회원"이라 함은 이 약관에 따라 회사가 제공하는 서비스를 이용하는 사람을 말하며 회원은 회사와 이용계약을 체결한 기관에 가입하여 본 서비스를 이용할 수 있습니다. 

4. "아이디(ID)"라 함은 회원의 개인 식별과 서비스 이용을 위하여 회원이 정하고 회사가 승인하는 회원의 휴대전화번호 또는 e메일 계정을 의미합니다. 

5. "비밀번호"라 함은 회원이 생성한 아이디와 일치되는 회원임을 확인하고 회원의 서비스 접속 및 정보 보호를 위해 회원 자신이 정한 문자 또는 숫자의 조합을 의미합니다. 

6. "게시물"이라 함은 회원이 서비스를 이용함에 있어 서비스 상에 게시한 부호ㆍ문자ㆍ음성ㆍ음향ㆍ화상ㆍ동영상 등의 정보 형태의 글, 사진, 동영상 및 각종 파일과 링크 등을 의미합니다.




제 3 조 (약관의 게시와 개정) 

1. 회사는 이 약관의 내용을 회원이 쉽게 알 수 있도록 서비스 초기 화면에 게시합니다. 

2. 회사는 "약관의 규제에 관한 법률", "정보통신망 이용 촉진 및 정보 보호 등에 관한 법률(이하 "정보통신망법")"등 관련법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다. 

3. 회사가 약관을 개정할 경우에는 적용일자 및 개정 사유를 명시하여 제1항의 방식에 따라 그 개정 약관의 적용일자 30일 전부터 적용일자 1일 전까지 공지합니다. 

다만, 회원에게 불리한 약관의 개정의 경우에는 공지 외에 일정 기간 서비스 내 전자우편, 전자 쪽지, 로그인 시 동의팝업 등의 전자적 수단을 통해 따로 명확히 통지하도록 합니다. 

4. 회사가 전 항에 따라 개정 약관을 공지 또는 통지하면서 회원에게 30일 기간 내에 의사표시를 하지 않으면 의사표시가 표명 된 것으로 본다는 뜻을 명확하게 공지 또는 통지하였음에도 회원이 명시적으로 거부의 의사표시를 하지 아니한 경우 회원이 개정 약관에 동의한 것으로 봅니다. 

5. 회원이 개정 약관의 적용에 동의하지 않는 경우 회사는 개정 약관의 내용을 적용할 수 없으며, 이 경우 회원은 이용 계약을 해지할 수 있습니다. 다만, 기존 약관을 적용할 수 없는 특별한 사정이 있는 경우에 회사는 별도의 통지 또는 게시 후 회원과의 이용 계약을 해지할 수 있습니다. 




제 4 조 (약관의 해석) 

1. 회사는 추가적인 개별 서비스에 대해서는 별도의 이용 약관 및 정책(이하 "추가 서비스 약관 등")을 둘 수 있으며, 해당 내용이 이 약관과 상충할 경우에는 "추가 서비스 약관 등"이 우선하여 적용됩니다. 

2. 이 약관에서 정하지 아니한 사항이나 해석에 대해서는 "추가 서비스 약관 등" 및 관계 법령 또는 상관례에 따릅니다. 




제 2 장 회사의 권리와 의무




제 5 조 (회사의 의무) 

1. 회사는 회원에게 아래와 같은 서비스를 제공합니다. 

1) 스마트폰 알리미 서비스

2) SMS 발송 서비스 

3) 게시판 서비스 

4) 비공개 게시판 서비스

5) 소속 기관의 위치에 따른 정보서비스

6) 기타 회사가 추가 개발하거나 다른 회사와의 제휴계약 등을 통해 회원에게 제공하는 일체의 서비스

2. 서비스는 연중무휴, 1일 24시간 제공함을 원칙으로 합니다.

3. 회사는 계속적이고 안정적으로 서비스를 제공하기 위하여 최선을 다하여 노력합니다. 

4. 단 회사는 다음 각 호에 해당하는 경우 제 9조 [회원에 대한 통지]에 의거하여 기관 혹은 회원에게 사전, 사후 통지하며 서비스 제공을 중단 할 수 있습니다. 

1) 서비스의 정기, 비정기 점검 시 

2) 전기통신사업법상에 규정된 기간 통신사업자가 전기통신서비스를 중지했을 경우

3) 정전으로 서비스 제공이 불가능한 경우

4) 서비스용 설비의 이전, 보수 또는 공사로 인하여 부득이한 경우

5) 서비스 설비의 장애 또는 서비스 이용의 폭주 등으로 정상적인 서비스 제공이 어려운 경우 

5. 회사는 서비스 중지에 따라 이용자에게 별도의 보상은 하지 않습니다. 단 기관에 한하여 회사의 실수에 의한 중지시간이 연속 48시간을 초과한 경우에 한하여, 월 이용금액을 해당월의 날짜 수로 일할 계산하여 환불 또는 차감하여 드립니다. 

6. 회사는 기관 혹은 회원이 안전하게 서비스를 이용할 수 있도록 개인정보 보호를 위해 보안 시스템을 갖추어야 하며 개인정보 취급방침을 공시하고 준수합니다.




제 6 조 (개인정보 보호 의무) 

1. 기관 혹은 회사는 “개인정보보호법”, "정보통신망법" 등 관계 법령이 정하는 바에 따라 기관 또는 회원의 개인정보를 보호하기 위해 노력하여야 합니다. 개인정보의 보호 및 사용에 대해서는 관련법 및 회사의 개인정보 취급방침이 적용됩니다. 

2. 단, e알리미 공식 사이트 이외의 링크된 사이트에서는 회사의 개인정보 취급방침이 적용되지 않습니다.




제 7 조 (서비스의 변경) 

1. 회사는 상당한 이유가 있는 경우에 운영상, 기술상의 필요에 따라 제공하고 있는 전부 또는 일부 서비스를 변경할 수 있습니다. 

2. 서비스의 내용, 이용 방법, 이용 시간에 대하여 변경이 있는 경우 변경 사유, 변경될 서비스의 내용 및 제공일자 등을 변경 전에 해당 서비스 초기화면에 게시하여야 합니다. 




제 8 조 (이용제한 등) 

1. 회사는 회원 및 기관이 이 약관의 의무를 위반하거나 서비스의 정상적인 운영을 방해한 경우, 경고, 일시정지, 영구이용정지 등으로 서비스 이용을 단계적으로 제한할 수 있습니다. 

2. 회사는 전 항에도 불구하고, 명의도용 및 중복회원가입, "저작권법" 및 "컴퓨터 프로그램 보호법"을 위반한 불법 프로그램의 제공 및 운영방해, "정보통신망법"을 위반한 불법통신 및 해킹, 악성 프로그램의 배포, 접속권한 초과행위 등과 같이 관련법을 위반한 경우에는 즉시 해댕 회원 혹은 기관에 대해 영구이용정지 조치를 취할 수 있습니다. 본 항에 따른 영구이용정지 시 서비스 이용을 통해 누적된 데이터는 제14조 5항과 동일하게 소멸되며, 회사는 이에 대해 별도로 보상하지 않습니다. 

3. 본 조에 따라 서비스 이용을 제한하거나 계약을 해지하는 경우에는 회사는 제 9조 ["회원"에 대한 통지]에 의거하여 통지합니다. 

4. 회원 및 기관은 본 조에 따른 이용제한 등에 대해 이의신청을 할 수 있습니다. 이 때 이의가 정당하다고 인정하는 경우 회사는 즉시 서비스의 이용을 재개합니다. 

5. 회사는 건전한 통신문화정착과 효율적인 서비스 운영을 위하여 기관 또는 기관의 회원이 게시하거나 제공하는 자료가 다음 각 호에 해당한다고 판단되는 경우 기관의 담당자에게 통지 후 삭제, 자료 이동, 숨김처리 등 조치를 취할 수 있습니다. 단 사안이 중대한 경우 담당자에 대한 통지는 처리 이후 진행 될 수 있습니다.

1) 공공질서 및 미풍양속에 반하는 경우

2) 제 3자 또는 회사의 명예, 신용을 훼손하거나 모욕 또는 영업을 방해하는 경우

3) 서비스를 위해 할 소지가 있거나 바이러스 등이 포함된 자료인 경우

4) 범죄적 행위와 결부된다고 객관적으로 인정되는 내용인 경우

5) 제 3자 또는 회사의 지적재산권 등 권리를 침해하는 내용인 경우

6) 기타 관계법령 및 회사의 게시물 관리규정에 위배된다고 판단되는 경우







제 9 조 (회원에 대한 통지) 

1. 회사가 기관 혹은 회원에 대한 개별 통지를 하는 경우 서비스 내 전자우편주소, 본 서비스, 휴대폰 문자메시지 등으로 할 수 있습니다. 

2. 회사는 회원 전체에 대한 통지의 경우 7일 이상 e알리미의 공지사항에 게시함으로써 제 1항의 통지에 갈음할 수 있습니다.




제 10 조 (책임제한) 

1. 회사는 천재지변 또는 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우에 서비스 제공에 관한 책임이 면제됩니다. 

2. 회사는 회원 및 기관의 귀책사유로 인한 서비스 이용의 장애에 대하여는 책임을 지지 않습니다. 

3. 회사는 회원 및 기관이 서비스에 게재한 정보, 자료, 사실의 신뢰도, 정확성 등의 내용에 관하여는 책임을 지지 않습니다.




제 3 장 기관의 이용




제 11 조 (기관의 이용 계약) 

1. 기관의 이용 계약은 본 서비스를 이용하고자 하는 기관의 담당자(이하 담당자)가 별도의 기관신청페이지를 통해 기관의 서비스 이용신청을 함으로써 체결됩니다. 서비스 이용신청시 기관에서 제공해야 하는 정보는 다음 각 호와 같습니다. 

1) 기관명

2) 담당자의 ID

3) 대표연락처

4) 주소

5) 대표e메일

6) 결제일

7) 사용인원

8) 사업자등록번호(선택)

2. 담당자는 판매 대행회사의 영업직원을 통해서 기관 이용신청을 할 수 있으며 영업직원이 기관의 서비스 이용신청시 추가로 작성하는 정보는 다음과 같습니다. 

1) 기관유형

2) 월비용

3) 영업자명

3. 기관의 이용계약은 기관이 지정한 최초 결제일로부터 유효하며 회사는 서비스 이용요금 결제 이전에 다음 각 호에 대항하는 기관에 대해서는 별도의 통지 후 이용계약을 체결하지 않을 수 있습니다. 

1) 타 기관의 명의를 도용하여 신청하였을 때

2) 이용 신청 시 내용을 허위로 기재하였을 때

3) 사회의 안녕질서 또는 미풍양속을 저해할 목적으로 신청하였을 때

4) 이용제한 기간이 만료되지 아니한 때

5) 기타 회사가 정한 이용신청 요건 등이 미비 되었을 때 






제 12 조 (기관의 서비스 이용기간) 

1. 기관은 서비스 이용신청 후 즉시 서비스를 이용할 수 있으며 최초 결제일 이전까지 사용에 대한 요금은 부과되지 않습니다. 

2. 기관이 지정한 결제일에 결제가 된 경우 결제한 금액만큼의 사용기간이 주어집니다. 

3. 기관이 지정한 결제일에 결제가 되지 않은 경우 기관의 대표 e메일로 통지 후 기관의 이용상태가 ‘연체’ 또는 ‘일시정지’로 변경되며 결제일 이후로부터 30일간 유예기간이 주어집니다. 단 유예기간 동안에도 과금은 진행됩니다.

5. 유예기간 내에도 결제가 이루어지지 않은 경우 기관의 대표 e메일로 통지 후 기관의 서비스 이용이 정지됩니다. 




제 13 조 (기관의 의무) 

1. 기관은 서비스 이용 시 회원의 개인정보 보호 및 게시물에 대한 저작권 보호, 기관 혹은 회원의 부정한 서비스 이용방지를 위해 노력해야 합니다. 기관의 관리 소홀에 의해 발생하는 개인정보 유출, 타인의 저작권 침해, 명예훼손 등의 각종 분쟁에 대해 회사는 책임을 지지 않습니다. 

2. 기관은 현행 법,제도 및 사회통념에 위배되지 않도록 서비스를 이용해야 하며 이와 관련하여 회사는 관계당국 및 사법기관에 수사를 의뢰하거나 도움을 청할 수 있으며, 만일 관계당국 및 사법기관의 협조요청이 있을 경우 협조함을 원칙으로 합니다.




제 14조 (기관의 서비스 해지)

1. 기관이 언제라도 서비스를 해지할 수 있으며 서비스를 해지하고자 할 때 반드시 서면 또는 고객문의, 판매대행회사를 통해 해지의사를 밝혀야 합니다. 

2. 기관이 서비스 해지 요청을 할 경우 회사는 7일 이내에 서비스 이용을 정지시키며 기관이 서비스 해지를 요청한 날부터 과금을 중단합니다. 

3. 기관의 서비스 이용요금이 연체되어 있는 경우 기관은 해지 요청일로부터 7일 이내에 미납금을 완납하여야 합니다. 

4. 회사는 다음 각 호의 경우 기관과 협의없이 기관의 서비스를 해지할 수 있습니다. 

1) 기관 또는 기관 회원의 서비스 이용이 제 8조 5항의 각 호에 해당하고 이에 대한 관리 요청을 하였으나 시정되지 않는 경우

2) 기관 또는 기관 회원의 서비스 이용이 제 8조 5항의 각 호에 해당하고 그 정도가 중한 경우

3) 관계법령을 위배하거나 법에 의한 수사기관의 정지 요청이 있을 경우

4) 제 11조 3항의 각 호에 해당하는 경우

5) 기관의 연체가 2개월 이상 지속되는 경우

6) 기관의 폐업, 휴업 등 기관이 계약 상대자로써의 지위가 상실되는 경우 

7) 회사의 폐업, 휴업 등 서비스 제공이 불가능하다고 회사가 판단하는 경우 

5. 기관의 서비스가 해지된 경우 회사는 즉각적으로 기관의 모든 정보를 삭제합니다. 단 회사와 기관의 계약정보, 결제정보, 고객문의정보, 접속기록 등 관련법 및 회사의 내부방침에 의한 일부 정보는 개인정보취급방침 제 5조에 의거하여 삭제하지 않을 수 있습니다. 




제 4 장 회원의 이용




제 15 조 (회원의 이용 계약) 

1. 회원의 이용 계약은 회원이 되고자 하는 자(이하"가입 신청자")가 약관의 내용에 대하여 동의를 한 다음 회원가입 신청에 의해 체결됩니다. 

2. 기관은 "가입신청자"의 신청에 대하여 서비스 이용을 승낙함을 원칙으로 합니다. 다만, 기관 혹은 회사는 다음 각 호에 해당하는 신청에 대하여 승낙을 하지 않거나 사후에 별도의 통지 없이 이용 계약을 해지할 수 있습니다. 

1)“가입 신청자”가 약관에 의하여 이전에 회원 자격을 상실한 적이 있는 경우, 단 기관 혹은 회사의 회원 재가입 승낙을 얻은 경우에는 예외로 함. 

2)허위의 정보를 기재하거나, 기관이 요청하는 내용을 기재하지 않는 경우

3)회원이 더 이상 기관의 소속이 아닌 경우

4)회원의 귀책사유로 인하여 승인이 불가능하거나 기타 규정한 제반 사항을 위반하며 신청하는 경우

3. 제 2항의 각 호에 해당하는 경우가 아니라 하더라도 기관 혹은 회사는 서비스 관련 설비의 여유가 없거나, 기술상 또는 업무상 문제가 있는 경우에는 승낙을 유보할 수 있습니다. 

4. 회원과 회사와의 이용 계약의 성립 시기는 “가입신청자”가 서비스 회원가입을 완료한 시기로 합니다. 

5. 회원과 기관과의 이용 계약 성립 시기는 기관이 “가입신청자”의 가입 승인을 완료한 시점으로 합니다. 

6. 기관은 회원에 대해 내부 정책에 따라 등급 별로 구분하고, 서비스 메뉴 등을 세분화하여 이용에 차등을 둘 수 있습니다.

7. 기관 혹은 회사는 회원의 자격상실, 불량이용확인, 기타의 이유로 회원의 동의없이 회원과의 계약을 해지할 수 있으며 이 때 회원에 대한 통지의 의무는 없습니다. 




제 16 조 (회원 정보의 변경) 

1. 회원은 개인정보 관리 화면을 통하여 언제든지 본인의 개인정보를 열람하고 수정할 수 있습니다. 다만, 서비스 관리를 위해 필요한 가입일 등 특수한 항목들은 수정이 불가능합니다. 

2. 회원은 회원가입 신청 시 기재한 사항이 변경되었을 경우 본 서비스 내의 정보를 수정을 하거나 기타 방법으로 기관에게 그 변경 사항을 알려야 합니다.

3. 제 2항의 변경사항을 기관에 알리지 않거나 본 서비스에 정보를 변경하지 않아서 발생한 불이익에 대하여 기관과 회사는 책임지지 않습니다.

4. 발신번호 사전등록제 시행과 관련하여 문자메시지 발송권한을 가지고 있는 경우 회원은 공인된 개인인증기관의 본인확인 인증을 거쳐야 합니다. 




제 17 조 (회원의 아이디 및 비밀번호의 관리) 

1. 회원의 아이디와 비밀번호에 대한 관리책임은 회원에게 있으며, 이를 제 3자가 이용하도록 하여서는 안 됩니다. 

2. 회사는 회원의 아이디가 회사에서 지정한 형태가 아니거나 타인의 아이디를 도용한다고 판단할만한 충분한 근거가 있는 경우 해당 회원의 서비스 이용을 제한하거나 정보를 변경 할 수 있습니다. 

3. 회원은 아이디 및 비밀번호가 도용되거나 제 3자가 사용하고 있음을 인지한 경우에는 이를 즉시 회사에 통지하고 회사의 안내에 따라야 합니다. 

4. 제 3항의 경우에 해당 회원이 회사에 그 사실을 통지하지 않거나, 통지한 경우에도 회사의 안내에 따르지 않아 발생한 불이익에 대하여 회사는 책임지지 않습니다.




제 18 조 (회원의 서비스 이용상 의무) 

1. 회원은 다음 행위를 하여서는 안 됩니다. 

1) 신청 또는 변경 시 허위내용의 등록 

2) 타인의 정보도용 및 부정가입 

3) 발신번호 변작, 스팸/스미싱 등 불법적 발송 행위

3) 기관 및 타 회원이 게시한 정보의 변경

4) 회사가 정한 정보 이외의 정보(컴퓨터프로그램 등) 등의 송신 또는 게시 

5) 기관 혹은 회사, 기타 제 3자의 저작권 등 지적재산권에 대한 침해 

6) 기관 혹은 회사, 기타 제 3자의 명예를 손상시키거나 업무를 방해하는 행위 

7) 외설 또는 폭력적인 메시지, 화상, 음성, 기타 공서양속에 반하는 정보를 서비스에 공개 또는 게시하는 행위 

8) 소속기관 혹은 회사의 동의 없이 영리를 목적으로 서비스를 사용하는 행위 

9) 기타 불법적이거나 부당한 행위 

2. 회원은 관계법, 이 약관의 규정, 이용안내 및 서비스와 관련하여 공지한 주의사항, 기관 혹은 회사가 통지하는 사항 등을 준수하여야 하며, 기타 회사의 업무에 방해되는 행위를 하여서는 안 됩니다. 

3. 회원이 본 조 1항의 각호에 해당하는 행위를 하였을 때 회사는 회원의 서비스 이용의 일부 또는 전부를 일시적으로 또는 영구적으로 제한할 수 있습니다. 




제 19 조 (계약 해제, 해지 등) 

1. 회원은 언제든지 서비스 화면의 개인정보 수정 메뉴를 통하여 이용 계약 해지 신청(회원 탈퇴)을 할 수 있으며, 회사는 관련법 등이 정하는 바에 따라 이를 즉시 처리하여야 합니다. 

2. 회원이 계약을 해지 할 경우, 관련법 및 개인정보 취급방침에 따라 회사가 회원 정보를 보유하는 경우를 제외하고는 해지 즉시 회원의 계정은 소멸되나, 회원이 알리미의 회신(피드백)으로 남긴 각종 설문에 대한 내용, 게시글 및 일부 개인정보는 관련법 및 개인정보취급방침 제 5조에 의거 유지될 수 있습니다.




제 20 조 (전자우편주소의 수집ㆍ매매 등 금지)

1. 회원은 전자우편주소 수집기의 활용 등 회사가 허용하지 않는 방법을 이용하여 회원의 전자우편주소를 수집 또는 제 3자에게 매매ㆍ제공할 수 없습니다. 

2. 회사는 전자우편주소 추출기ㆍ전자우편주소 생성기 기타 이와 유사한 기술적 장치를 이용하여 생성ㆍ수집ㆍ배포한 전자우편주소를 이용하여 회원들에게 무작위로 전송되는 전자우편 발송을 차단할 수 있으며, 이러한 차단 행위로 인하여 전자우편 발송자가 당해 전자우편을 발송하지 못한 것에 대한 책임을 지지 않습니다. 

3. 회사는 회원이 제 1항 및 제 2항의 규정을 위반하여 회사나 다른 회원에게 정신적ㆍ물질적 손해를 끼친 경우에는 민사 또는 형사 소송을 제기하여 그 손해에 대한 책임을 물을 수 있습니다.




제 5 장 콘텐츠의 제공 및 관리 및 권리




제 21 조 (게시물의 저작권) 

1. 회원 혹은 기관이 서비스 내에 게시한 게시물의 저작권은 해당 게시물의 저작자에게 귀속됩니다. 

2. 단, 회원이 게시한 게시물에 대해 활용이 가능하다고 명확하게 표시한 경우에 한하여 회사 및 타 회원들이 해당 게시물을 활용할 수 있습니다.




제 22 조 (게시물의 관리) 

1. 회원의 게시물이 "정보통신망법" 및 "저작권법"등 관련법에 위반되는 내용을 포함하는 경우, 권리자는 관련법이 정한 절차에 따라 해당 게시물의 게시 중단 및 삭제 등을 요청할 수 있으며, 회사는 관련법에 따라 조치를 취하여야 합니다. 

3. 권리자는 본 조 및 "저작권법"에 따라 저작권을 침해한 게시물에 대한 게시 중단 요청은 기관 및 회사에게 서면 또는 e메일로 접수하여 조치할 수 있습니다.

2. 기관 및 회사는 제 2항에 따른 권리자의 요청이 없는 경우라도 권리 침해가 인정될 만한 사유가 있거나 기타 회사 정책 및 관련법에 위반되는 경우에는 관련법에 따라 해당 게시물에 대해 임시 조치 등을 취할 수 있습니다. 




제 23 조 (정보의 제공 및 광고의 게재) 

1. 기관 혹은 회사는 회원이 서비스 이용 중 필요하다고 인정되는 다양한 정보를 공지사항이나 전자 우편 등의 방법으로 회원에게 제공할 수 있습니다. 

2. 기관 혹은 회사는 서비스의 운영과 관련하여 서비스 화면 등에 광고를 게재할 수 있습니다. 




제 6 장 이용자 보호




제 24 조 (서비스 이용 불만 처리) 

1. 서비스 이용과 관련한 불만사항은 e알리미 서비스 내 고객문의에 등록 또는 cs@e-wut.com로 메일을 보내주시면 접수하여 처리합니다. 

2. 서비스 이용 불만사항의 경우 아래와 같이 처리됩니다. 


구분
 
접수담당자
 
처리담당자
 
처리기간
 
비고
 

이용문의
 
이세영 사원
 
유경상 과장
 
3일 내
 


 

장애신고
 
이세영 사원
 
유경상 과장
 
7일 내
 
7일 내 수정 불가시 별도 통지
 

개인정보 관련
 
유경상 과장
 
유경상 과장
 
7일 내
 
사안별 서류제출 필요
 

발신번호 변작, 스팸/스미싱 등 부정행위 관련
 
유경상 과장
 
유경상 과장
 
7일 내
 
사안별 서류제출 필요
 









제 7 장 분쟁




제 25 조 (서비스 저작권 및 지적재산권) 

1. 서비스에 대한 저작권 및 지적재산권은 주식회사 이웃닷컴에 귀속되어 있습니다. 

2. 서비스의 세부 화면에 대한 유출, 프로세스 및 로직에 대한 복제 등 본 서비스의 저작권 및 지적재산권을 침해하는 모든 행위에 대해서는 민형사상 소의 대상이 될 수 있습니다. 




제 26 조 (준거법 및 재판관할) 

1. 기관 및 회원과 회사 간 제기된 소송은 대한민국 법을 준거법으로 합니다. 

2. 기관 및 회원과 회사 간 발생한 분쟁에 관한 소송은 회사소재지의 관할법원에 제소합니다.




부칙 

본 약관은 2014년 08월 31일부터 적용됩니다.




개정판 공고일자 : 2016년 10월 11일

개정판 시행일자 : 2016년 10월 18일

                  
	                  </textarea>
					<div class="col-lg-4"></div>
					<div class="radio">
						<br><br><label><input type="radio" id="provisionYn" name="provisionYn" value="Y" autofocus="autofocus" checked>
							이용약관에 동의합니다.
						</label>
						<label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" id="provisionYn" name="provisionYn" value="N"> 
							이용약관에 동의하지 않습니다.
						</label><br><br><br>
					</div>
				</div>
			<div class="form-group">
				<label for="memberInfo" class="col-lg-12 control-label text-center">개인정보취급방침</label><br><br><br>
				<div class="col-lg-3 "></div>
				<div class="col-lg-6 " id="memberInfo">
					<textarea class="form-control" rows="20" style="font-size:14px;"readonly>
1.  수집하는 개인정보의 항목 및 수집방법

회사는 회원가입, e알리미 서비스 및 각종 서비스의 제공을 위해 최초 회원가입 당시아래와 같은 최소한의 개인정보를 필수항목으로 수집하고 있습니다. 
- 필수항목 : 이름, 휴대폰번호(혹은 e메일계정), 비밀번호, 자필서명

- 선택항목 : e메일계정

 
 2.  개인정보의 수집 및 이용목적

회사는 다음과 같은 목적으로 회원의 개인정보를 수집합니다. 

 o 가. 회원관리 
     회원제 서비스 이용 및 개인식별, 불량회원의 부정 이용방지와 비인가 사용방지, 가입의사 확인, 가입 및 가입횟수 제한, 고지사항 전달, 고객고충 및 민원처리

 o 나. 서비스 제공    
      스마트공지 등 e알리미 서비스의 전달, 공지용 문자메시지/e메일의 발송


3.   개인정보의 보유 및 이용기간

     이용자의 개인정보는 원칙적으로 개인정보의 수집 및 이용목적이 달성되면 지체없이 파기합니다. 
      - 보존 이유 : 서비스의 제공 
       - 보존 기간 : 회원탈퇴 시까지
     

4.   개인정보 수집 동의 거부의 권리와 그 행사방법

      - 이용자는 해당 개인정보의 수집 및 이용을 거부할 권리가 있습니다. 단 개인정보의 수집 및 이용을 거부할 경우 본 서비스의 이용에 제한이 있을 수 있습니다.
       - 가입해지(동의철회)를 위해서는 "회원탈퇴"를 클릭하여 직접 열람,정정 또는 탈퇴가 가능합니다.

      - 이용자의 개인정보 조회, 수정을 위해서는 '개인정보변경'(또는 '회원정보수정' 등)을, 
       - 혹은 개인정보 관리책임자에게 이메일 등의 방법으로 연락하시면 지체 없이 조치하겠습니다.

	                    </textarea>
					<div class="col-lg-4"></div>
					<div class="radio">
						<br><br><label> <input type="radio" id="memberInfoYn"
							name="memberInfoYn" value="Y" checked>
							개인정보취급방침에 동의합니다.
						</label>
						<label>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" id="memberInfoYn" name="memberInfoYn" value="N">
							개인정보취급방침에 동의하지 않습니다.
						</label><br><br><br>
					</div>
				</div>
				<div class="form-group">
					<div class="col-lg-4"></div>
					<div class="col-lg-4">
						<input type="submit" class="btn btn-primary btn-lg" id="btn" value="다음"><br><br><br>		
					</div>
					<div class="col-lg-4"></div>
				</div>
			</div>
		</form>
	</div>
</body>
</html>
<jsp:include page="../module/footer.jsp"></jsp:include>