<!-- [김도희] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../module/top.jsp"></jsp:include>
<!DOCTYPE html>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<script>
	$(function(){
		$("#btn").click(function( event ) {
			var memberInfo = $('#reportInfo');	
		//계획서 동의 안내서
			if($('#reportInfoYn:checked').val()=="N"){
				alert("보고서 안내에 동의하여 주시기 바랍니다.");
				memberInfo.removeClass("has-success");
				memberInfo.addClass("has-error");
				$('#reportInfoYn').focus();
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
	<br><br><br>
	<h4>&nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-home" aria-hidden="true"></span>홈 > 기부 > 계획서 > 보고서 동의</h4>
	<form class="form-horizontal" role="form" id="frm" name="frm" method="post" action="${pageContext.request.contextPath}/donationSpendReportInsertView">
		<div style="text-align:center;font-size:16px;">
			<br><br><br><img src="${pageContext.request.contextPath}/resources/image/reportAgreement.png" width="50%" height="10%"><br>
			<br><br><div class="form-group">
				<label for="reporInfo" class="col-lg-12 control-label text-center">보고서 동의서 안내</label><br><br><br>
					<div class="col-lg-3 "></div>
					<div class="col-lg-6 " id="planInfo">
					<textarea class="form-control" rows="20" style="font-size:14px;" readonly>
공익성 기부금 관리 규정

 

제정 : 2010. 9. 1.

개정 : 2016. 2. 16.

개정 : 2016.12.22

개정 : 2017.06.15

 

제1장 총칙

 

제1조 (목적) 이 규정은 한국의사100년기념재단(이하 “재단”이라고 한다.)에서 재단 목적사업 운영을 위하여 기부자(개인 또는 단체)로부터 기부받는 공익성 기부금의 조성 및 운영에 관한 사항을 규정함을 목적으로 한다.

 

제2조 (용어의 정의) 이 규정에서 사용하는 용어의 정의는 다음과 같다.
1.공익성기부금이라 함은 재단의 공익사업을 위해 대가없이 증여되는 금전 또는 재산적 가치가 있는 것을 말하며, 지정기부금, 실명제기부금 및 순수기부금으로 나뉜다.
2.지정기부금이라 함은 지원대상이나 지원방법을 지정한 기부금을 말한다.
3.실명제기부금이라 함은 기부금의 명칭, 사용대상 및 절차 등에 대해 기부자와 협의하여 운영하는 기부금을 말한다.
4.순수기부금이라 함은 지원대상이나 지원방법에 대한 조건이 없는 순수한 기부금을 말한다.
5.기부자라 함은 재단에 무상으로 재산적 가치가 있는 것을 기부하는 자를 말하며 개인 또는 단체를 포함한다.
6.공익사업이라 함은 재단이 수행하는 사업 또는 활동 중 지원금의 지급대상이 되는 것을 말한다.
7.지원사업자라 함은 지원사업을 수행하는 자를 말하며, 개인 또는 단체를 포함한다.

 

제3조 (적용범위) 동 규정은 재단에서 기부금의 관리가 필요한 경우에 한하여 적용한다.

 

제4조 (기부금 사용의 원칙) 기부금은 재단의 목적사업, 기부자의 지원 요청 사업 및 지원금액 내에서만 사용한다.

 

제5조 (공익성기부금의 종류) 재단에 기부하는 공익성기부금의 종류는 다음과 같다.
1.지정기부금
2.실명제기부금
3.순수기부금

 

제2장 기부금의 관리

 

제6조 (위원회) 기부금은 재단 정관 제25조 규정에 의한 집행위원회에서 관리·운영하며, 집행위원회의 구성 원칙은 재단 정관에 의한다. <2017. 06. 15 개정>

 

제7조 (기부신청) 공익 목적을 위하여 재단에 기부하고자 하는 자(개인 또는 단체)는 다음 사항을 기재한 별지 제1호 서식 재단 공익성 기부금에 대한 기부신청서를 제출하여야 한다. <2016. 02. 16 개정>, <2017. 06. 15 개정>
1.기부금액 또는 기부재산의 표시
2.기부자의 성명(법인명 또는 대표자의 성명) 및 주소, 사업자등록번호(생년월일) <2017. 06. 15 개정>
3.지정기부금일 경우에는 조건(사업내용 등)의 명기
4.기부신청기간 또는 기부신청금액 등 표시 <2016. 02. 16 개정>

 

제8조 (기부금 채납 결정 및 통지) ① 재단 이사장은 기부 신청일로부터 15일 이내에 기부금 채납 여부를 결정하고 이를 즉각 기부자에게 통지하여야 한다.

② 재단 이사장은 기부금 채납 여부 결정 시 기부금의 조건이 재단 목적사업에 부합하는지 여부와 이와 관련된 제반사항을 검토하여 기부금의 채납 여부를 결정한다. <2017. 06. 15 개정>

③ 제2항의 “관련된 제반사항”이라 함은 특별한 것을 제외하고는 다음 각 호의 사항을 주안점으로 한다.
1.기부자 및 기부금품의 채납상의 타당성 및 가능성
2.지정기부금에 의한 지원사업의 타당 여부
3.실명제기부금의 경우 지속적인 지원사업 수행가능성 여부

④ 기부자와 기부대상사업 주체가 법률에서 정한 특수 관계에 있는 경우 기부금을 채납하지 아니한다.

 

제9조 (기부금영수증 발급 및 보관) ①재단 이사장은 기부자로부터 기부금을 수령한 이후 별지 제2호 서식 재단 기부금영수증을 발급하여야 한다. <2016. 02. 16 개정>, <2017. 06. 15 개정>

② 별지 제2호 서식 재단 기부금 영수증에는 기부자 인적사항, 기부처(재단) 및 기부금품의 내용 등을 기재한다. <2016. 02. 16 개정>, <2017. 06. 15 개정>

③ 재단 이사장은 100만원 이상의 별지 제2호 서식 재단 기부금영수증을 발급할 때에는 그 사본을 별도로 5년간 비치하여야 한다. <2016. 02. 16 개정>, <2017. 06. 15 개정>

 

제10조 (기부금의 처리) ① 기부금은 일반회계와 분리하여 특별회계로 관리, 운영한다.

② 지정기부금은 세입 세출 외 특별계정으로 관리한다.

 

제11조 (지정기부금에 의한 사업의 조정 지원) ① 재단 이사장은 지정기부금에 의한 사업을 지원함에 있어 지원 효과상 그 금액 또는 사업 내용을 조정할 수 있다.

② 재단 이사장은 기부자가 제1항에 의한 금액 또는 사업 내용의 조정을 동의할 경우에 한하여 지정기부금을 채납한다.

③ 수납된 지정기부금 중 사업 종료 후 잔액이 발생하였을 경우에는 기부자의 사전 동의를 거쳐 순수기부금으로 채납할 수 있다. 단, 기부자가 기부 신청 시 기부금액 잔액 처리 방법을 지정한 경우에는 그러하지 아니하다.

 

제12조 (실명제기부금의 명칭 및 관리운용) ① 각 실명제기부금의 명칭은 기부자와 재단 이사장이 협의하여 결정한다.

② 실명제기부금은 별도의 계좌를 개설하여 관리할 수 있으며, 적립식 실명제기부금은 수납한 원금으로부터 발생하는 이식금으로 지원사업을 수행하고, 정기납 실명제기부금은 수납한 원금으로 지원사업을 수행한다.

 

제13조 (지원대상 및 사업) ① 재단에 지원금 지원을 신청할 수 있는 자는 대한의사협회, 대한의사협회의 산하단체 및 대한의학회의 회원학회와 이와 동등한 자격이 있다고 인정하는 자에 한한다.

② 지원금은 다음 각 호의 사업과 활동에 한하여 지원할 수 있다. <2016. 02. 16 개정>
1.의사의 사회․문화활동 고양사업
2.대국민 의학지식 향상사업
3.의학적으로 도움이 필요한 국민에 대한 봉사활동
4.남북의료협력사업 및 교류사업
5.의학발전과 학술진흥
6.기타 재단 목적사업에 부합하고 재단 이사회에서 인정하는 사업

 

제14조 (지원사업의 공고와 지원금 지원 신청) ① 재단은 공개신청을 접수할 필요가 있는 지원사업명과 지원금 지원 신청기일을 명시하여 이를 의협신문 또는 의학 관련 전문지에 공고할 수 있다.

② 지원금의 지원을 신청하고자 하는 자는 재단 이사장이 정하는 별지 제3호 서식 재단 공익성기부금 지원신청서에 사업명 및 신청금액과 사업내용, 사업기간, 소요예산, 산출내역, 재원조달방법, 사업효과 등을 기재하고, 필요한 자료를 첨부하여 재단 이사장에게 제출하여야 한다. <2016. 02. 16 개정>, <2017. 06. 15 개정>

 

제15조 (목적 이외의 사용금지) 지원사업자는 이 규정이 정하는 지원금의 지원 결정 내용과 조건에 따라 성실히 그 지원사업을 수행하여야 하며, 지원 받은 지원금을 지원할 때에 인정한 목적 이외의 다른 용도에 이를 사용하지 못한다.

 

제16조 (지원사업의 수행상황 보고 등) ① 지원사업자는 재단 이사장이 정하는 바에 따라 지원사업의 수행상황과 실적을 사업 종료 후 1개월 이내에 별지 제4호 서식 재단 공익성기부금 사용보고서(실적보고서)에 의거 재단 이사장에게 보고하여야 한다. <2016. 02. 16 개정>, <2017. 06. 15 개정>

② 제1항의 별지 제4호 서식 재단 공익성기부금 사용보고서(실적보고서)에는 그 지원사업에 소요된 경비를 재원별로 명백히 한 계산서 및 증빙서류와 재단 이사장이 정하는 서류를 첨부하여야 한다. <2016. 02. 16 개정>, <2017. 06. 15 개정>

 

제17조 (보칙) 이 규정에 정하지 아니한 사항에 대해서는 법인세법 및 관련법률을 준용하여 집행위원회의 심의를 거쳐 재단 이사회에서 정한다.

 

부 칙(2010. 09. 01.)

 
1.(시행일) 이 규정은 재단 이사회의 인준을 받은 날부터 시행한다.

 

부 칙(2016. 02. 16.)

 
1.(시행일) 이 규정은 재단 이사회의 인준을 받은 날부터 시행한다.

 

부 칙(2016. 12. 22.)

 
1.(시행일) 이 규정은 재단 이사회의 인준을 받은 날부터 시행한다.

 

부 칙(2017.  6. 15.)
1.(시행일) 이 규정은 재단 이사회의 인준을 받은 날부터 시행한다.

						</textarea>
						<div class="col-lg-4"></div>
						<div class="radio">
							<label>
								<br><input type="radio" id="reportInfoYn" name="reportInfoYn" value="Y" checked>
	                            동의합니다.     
	                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" id="reportInfoYn" name="reportInfoYn" value="N">    
	                                 동의하지 않습니다.
							</label>
						</div>
					</div>
				</div>
			</div>
		<div class="form-group">
			<div class="col-lg-offset-6 col-lg-6">
				<input type="submit" class="btn btn-primary btn-lg" id="btn" value="다음"><br><br><br>
			</div>	
		</div>
	</form>	
</body>
</html>
<jsp:include page="../module/footer.jsp"></jsp:include>