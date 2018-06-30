<!-- [김도희] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../module/top.jsp"></jsp:include>
<!DOCTYPE html>

<html>
	<head>
	<script>
	$(function(){
		$("#btn").click(function( event ) {
			var memberInfo = $('#planInfo');	
		//계획서 동의 안내서
			if($('#planInfoYn:checked').val()=="N"){
				alert("계획서안내에 동의하여 주시기 바랍니다.");
				memberInfo.removeClass("has-success");
				memberInfo.addClass("has-error");
				$('#planInfoYn').focus();
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
	<h4>&nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-home" aria-hidden="true"></span><a href="${pageContext.request.contextPath}/home">홈</a> > 기부 > 계획서 > 계획서 동의</h4>
	<form class="form-horizontal" role="form" id="frm" name="frm" method="post" action="${pageContext.request.contextPath}/donationPlanInsertView">
		<div style="text-align:center;font-size:16px;">
			<br><br><br><img src="${pageContext.request.contextPath}/resources/image/planAgreement.png" width="50%" height="10%"><br>
			<br><br><div class="form-group">
				<label for="planInfo" class="col-lg-12 control-label text-center">계획서 동의서 안내</label><br><br><br>
					<div class="col-lg-3 "></div>
					<div class="col-lg-6 " id="planInfo">
					<textarea class="form-control" rows="20" style="font-size:14px;" readonly>
<기부금 집행>
1. 원칙적으로 한국마사회 기부금 전용 통장 개설 및 직불카드 발급(집행이 단순한 경우는 예외로 하되, 기부금 담당자와 사전 협의사항)
2. 집행은 계좌입금 및 전용계좌 직불카드로 하는 것을 원칙으로 함
3. 사업진행 시 (세금)계산서 발행업체와의 거래를 원칙으로 함
4. 지원 전 기부금 신청서, 법인설립허가서, 법인정관 사본, 사업계획서, 개인정보 수집 동의서 등 관련 서류 필수 징구

<제출 서류 및 기한> 
1. 기부금 수령 후 1주일 이내 ‘이행확약서’ ‘기부금영수증’을 제출
2. 기부금 지원 사업 종료 후 30일 이내 ‘기부금집행결과서’ 제출
 * 이행확약서, 기부금영수증, 집행결과보고서는 별도 양식이 있으며, 제출방법은 마사회 홈페이지 기부금 집행자료 입력(사회공헌-기부금 집행자료 관리–자료입력) 이용

<기부금집행결과보고서 제출 - 기본서류>
1. 기부금집행결과보고서 제출 내부결재문서 1부
2. 한국마사회 집행결과보고서 기본양식 1부
3. 증빙자료 제출 기본양식 1부
 □ 행사 및 사업결과물 사진 A4 1장에 2장～6장
    * 사진 및 영수증은 A4 1장에 최대한 여러 장 붙이되, 내용확인은 가능토록 해야 함
    * 관련 홍보, 보도 자료 필수 첨부
 □ 집행 영수증 증빙
  - 세금계산서(간이영수증 사용 불가)
  - 직불카드 전표 또는 명세서
  - 마사회 기부금 전용통장 입출내역
4. 유의사항
 
○ 사진 및 영수증 자료 용량이 지나치게 과도한 경우 동 자료는 우편 제출 허용
○ 강사료, 출연료, 장학금과 같이 개인에게 비용 및 기부금 입금되는 경우, 수령자의 강의․행사 출연․장학금 전달과 같은 현장사진(수령자 얼굴확인 가능토록) 및 신분증(학생증) 앞뒤 복사본 필히 첨부
○ 통장입출내역을 기준으로 집행실적내역 작성, 그 순서에 맞게 증빙영수증 첨부
  
<기부금집행결과보고서 제출 - 주의사항>
□ 자료 온라인제출 최대용량 : 50MB(초과 시 시스템상 제출이 안 됨)
□ 파일형식 : PDF파일(제출자료 원본전체를 스캔하여 1개 파일로 제출)
  * 자료가 많아 원본전체 스캔이 어려운 경우, 나눠서 스캔 후 ZIP으로 압축한 1개 파일도 50MB를 초과하지 않으면 가능
□ 제출요일 : 월～금요일(경마시행일 토·일에는 홈페이지 사용 급증으로 제출 시 시스템다운 및 시간지연 등 문제 발생 소지 있음) 

<마사회 기부금관리규정상 제 12조(위반행위 처리기준)>
 아래의 위반행위를 한 경우에는 해당 기준에 따라 조치할 수 있다. 다만, 감액비율 및 지원 제한기간 등은 구체적 상황을 참작하여 처리기준의 50% 범위 내에서 각각 가감할 수 있다.
						</textarea>
						<div class="col-lg-4"></div>
						<div class="radio">
							<label>
								<br><input type="radio" id="planInfoYn" name="planInfoYn" value="Y" checked>
	                            동의합니다.     
	                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" id="planInfoYn" name="planInfoYn" value="N">    
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