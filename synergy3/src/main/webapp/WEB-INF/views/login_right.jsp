<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:include page="./module/top.jsp"></jsp:include>
<!DOCTYPE>
<html>
<head>
</head>
<body>	
	<div class="text-center container" style="font-size: 15px;">
	<br><br><h1 class="my-4">[권한별 로그인 및 기능]</h1><br><br>
	<h3>(자동로그인) click하신후 Synergy의 보다나은 서비스를 이용하실수 있습니다.</h3>
		<div>
			<a href="${pageContext.request.contextPath}/autoLogin?id=1&pw=1" class="btn btn-primary">일반회원 로그인</a>
			<a href="${pageContext.request.contextPath}/autoLogin?id=3&pw=3" class="btn btn-primary">기부단체 로그인</a>
			<a href="${pageContext.request.contextPath}/autoLogin?id=2&pw=2" class="btn btn-primary">관리자 로그인</a>
		</div><br><br><br>
	<!-- Marketing Icons Section -->	
		<div class="row">
			<div class="col-sm-3" style="padding:15px;">
		<jsp:include page="./module/left.jsp"/>
		</div>
		<div class="col-lg-2.5 mb-4">
			<div class="card h-100">
				<h4 class="card-header"><span style="font-weight:bold">GUEST</span></h4>
				<div class="card-body">
					<p class="card-text">
					[회원]<br>
					- 회원가입<br>
					- 로그인<br>
					- 아이디 찾기<br>
					- 비밀번호 찾기<br>
					<br>
					[경매품]<br>
					- 경매품 검색<br>
					<br>
					[기부금]<br>
					- 기부금 계획서 검색<br>
					- 기부금 보고서 검색<br>
					<br>
					[게시판]<br>
					- 게시판 검색<br>
				</div>
			</div>
		</div>
		<div class="col-lg-2.5 mb-4">
			<div class="card h-100">
				<h4 class="card-header"><span style="font-weight:bold">일반회원</span></h4>
				<div class="card-body">
					<p class="card-text">
					[회원]<br>
					- 회원가입<br>
					- 회원수정<br>
					- 회원탈퇴<br>
					- 로그인<br>
					- 로그아웃<br>
					<br>
					[캐쉬]<br>
					- 캐쉬 충전<br>
					- 캐쉬 검색<br>
					<br>
					[경매품]<br>
					- 경매품 등록<br>
					- 경매품 수정<br>
					- 경매품 삭제<br>
					<br>
					[경매]<br>
					- 입찰 등록<br>
					- 입찰 검색<br>
					- 낙찰 취소<br>
					- 낙찰 검색<br>
					- 결제<br>
					<br>
					[기부금]<br>
					- 기부금 기부<br>
					<br>
					[게시판]<br>
					- 게시판 문의 등록<br>
					- 게시판 문의 검색<br>
					</p>
				</div>
			</div>
		</div>
		<div class="col-lg-2.5 mb-4">
			<div class="card h-100">
				<h4 class="card-header"><span style="font-weight:bold">기부단체</span></h4>
				<div class="card-body">
					<p class="card-text">
					[회원]<br>
					- 회원가입<br>
					- 회원수정<br>
					- 회원탈퇴<br>
					- 로그인<br>
					- 로그아웃<br>
					<br>
					[기부금]<br>
					- 기부금 계획서 등록<br>
					- 기부금 계획서 수정<br>
					- 기부금 계획서 삭제<br>
					- 기부금 사용처 등록<br>
					- 기부금 사용처 수정<br>
					- 기부금 사용처 검색<br>
					- 기부금 사용처 삭제<br>
					- 기부금 사용 보고서 등록<br>
					<br>
					[게시판]<br>
					- 게시판 문의 등록<br>
					- 게시판 문의 검색<br>
					</p>
				</div>
			</div>
		</div>
		<div class="col-lg-2.5 mb-4">
			<div class="card h-100">
				<h4 class="card-header"><span style="font-weight:bold">관리자</span></h4>
				<div class="card-body">
					<p class="card-text">
					[회원]<br>
					- 모든 회원 검색<br>
					- 로그인<br>
					- 로그아웃<br>
					<br>
					[캐쉬]<br>
					- 모든 회원 캐쉬내역 검색<br>
					<br>
					[경매품]<br>
					- 경매품 삭제<br>
					<br>
					[기부금]<br>
					- 기부금 계획서 삭제<br>
					- 기부금 사용처 삭제<br>
					<br>
					[게시판]<br>
					- 게시판 문의 답변 등록<br>
					<br>
					[공지사항]<br>
					- 공지사항 등록<br>
					- 공지사항 수정<br>
					- 공지사항 삭제<br>
					</p>
				</div>
			</div>
		</div>
	</div>
	</div>
</body>
</html>	
<jsp:include page="./module/footer.jsp"></jsp:include>	