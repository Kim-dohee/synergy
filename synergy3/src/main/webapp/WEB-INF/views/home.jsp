<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="./module/top.jsp"></jsp:include>
<header>
	<!-- <div id="carouselExampleIndicators" class="carousel slide"
		data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			Slide One - Set the background image for this slide in the line below
			<div class="carousel-item active"
				style="background-image: url('./resources/image/image1.jpg')">
				<div class="carousel-caption d-none d-md-block">
					<h3>First Slide</h3>
					<p>This is a description for the first slide.</p>
				</div>
			</div>
			Slide Two - Set the background image for this slide in the line below
			<div class="carousel-item"
				style="background-image: url('./resources/image/image2.jpg')">
				<div class="carousel-caption d-none d-md-block">
					<h3>Second Slide</h3>
					<p>This is a description for the second slide.</p>
				</div>
			</div>
			Slide Three - Set the background image for this slide in the line below
			<div class="carousel-item"
				style="background-image: url('./resources/image/image3.jpg')">
				<div class="carousel-caption d-none d-md-block">
					<h3>Third Slide</h3>
					<p>This is a description for the third slide.</p>
				</div>
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleIndicators"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div> -->
</header>

<!-- Page Content -->


	
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
				<div class="card-footer">
					<a href="${pageContext.request.contextPath}/autoLogin?id=1&pw=1" class="btn btn-primary">일반회원 로그인</a>
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
				<div class="card-footer">
					<a href="${pageContext.request.contextPath}/autoLogin?id=3&pw=3" class="btn btn-primary">기부단체 로그인</a>
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
				<div class="card-footer">
					<a href="${pageContext.request.contextPath}/autoLogin?id=2&pw=2" class="btn btn-primary">관리자 로그인</a>
				</div>
			</div>
		</div>
	</div>
	<!-- /.row -->

	<!-- Portfolio Section -->
	<!-- <h2>Portfolio Heading</h2>

	<div class="row">
		<div class="col-lg-4 col-sm-6 portfolio-item">
			<div class="card h-100">
				<a href="#"><img class="card-img-top"
					src="http://placehold.it/700x400" alt=""></a>
				<div class="card-body">
					<h4 class="card-title">
						<a href="#">Project One</a>
					</h4>
					<p class="card-text">Lorem ipsum dolor sit amet, consectetur
						adipisicing elit. Amet numquam aspernatur eum quasi sapiente
						nesciunt? Voluptatibus sit, repellat sequi itaque deserunt,
						dolores in, nesciunt, illum tempora ex quae? Nihil, dolorem!</p>
				</div>
			</div>
		</div>
		<div class="col-lg-4 col-sm-6 portfolio-item">
			<div class="card h-100">
				<a href="#"><img class="card-img-top"
					src="http://placehold.it/700x400" alt=""></a>
				<div class="card-body">
					<h4 class="card-title">
						<a href="#">Project Two</a>
					</h4>
					<p class="card-text">Lorem ipsum dolor sit amet, consectetur
						adipiscing elit. Nam viverra euismod odio, gravida pellentesque
						urna varius vitae.</p>
				</div>
			</div>
		</div>
		<div class="col-lg-4 col-sm-6 portfolio-item">
			<div class="card h-100">
				<a href="#"><img class="card-img-top"
					src="http://placehold.it/700x400" alt=""></a>
				<div class="card-body">
					<h4 class="card-title">
						<a href="#">Project Three</a>
					</h4>
					<p class="card-text">Lorem ipsum dolor sit amet, consectetur
						adipisicing elit. Quos quisquam, error quod sed cumque, odio
						distinctio velit nostrum temporibus necessitatibus et facere atque
						iure perspiciatis mollitia recusandae vero vel quam!</p>
				</div>
			</div>
		</div>
		<div class="col-lg-4 col-sm-6 portfolio-item">
			<div class="card h-100">
				<a href="#"><img class="card-img-top"
					src="http://placehold.it/700x400" alt=""></a>
				<div class="card-body">
					<h4 class="card-title">
						<a href="#">Project Four</a>
					</h4>
					<p class="card-text">Lorem ipsum dolor sit amet, consectetur
						adipiscing elit. Nam viverra euismod odio, gravida pellentesque
						urna varius vitae.</p>
				</div>
			</div>
		</div>
		<div class="col-lg-4 col-sm-6 portfolio-item">
			<div class="card h-100">
				<a href="#"><img class="card-img-top"
					src="http://placehold.it/700x400" alt=""></a>
				<div class="card-body">
					<h4 class="card-title">
						<a href="#">Project Five</a>
					</h4>
					<p class="card-text">Lorem ipsum dolor sit amet, consectetur
						adipiscing elit. Nam viverra euismod odio, gravida pellentesque
						urna varius vitae.</p>
				</div>
			</div>
		</div>
		<div class="col-lg-4 col-sm-6 portfolio-item">
			<div class="card h-100">
				<a href="#"><img class="card-img-top"
					src="http://placehold.it/700x400" alt=""></a>
				<div class="card-body">
					<h4 class="card-title">
						<a href="#">Project Six</a>
					</h4>
					<p class="card-text">Lorem ipsum dolor sit amet, consectetur
						adipisicing elit. Itaque earum nostrum suscipit ducimus nihil
						provident, perferendis rem illo, voluptate atque, sit eius in
						voluptates, nemo repellat fugiat excepturi! Nemo, esse.</p>
				</div>
			</div>
		</div>
	</div>
	/.row

	Features Section
	<div class="row">
		<div class="col-lg-6">
			<h2>Modern Business Features</h2>
			<p>The Modern Business template by Start Bootstrap includes:</p>
			<ul>
				<li><strong>Bootstrap v4</strong></li>
				<li>jQuery</li>
				<li>Font Awesome</li>
				<li>Working contact form with validation</li>
				<li>Unstyled page elements for easy customization</li>
			</ul>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
				Corporis, omnis doloremque non cum id reprehenderit, quisquam totam
				aspernatur tempora minima unde aliquid ea culpa sunt. Reiciendis
				quia dolorum ducimus unde.</p>
		</div>
		<div class="col-lg-6">
			<img class="img-fluid rounded" src="http://placehold.it/700x450"
				alt="">
		</div>
	</div>
	/.row

	<hr>

	Call to Action Section
	<div class="row mb-4">
		<div class="col-md-8">
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
				Molestias, expedita, saepe, vero rerum deleniti beatae veniam harum
				neque nemo praesentium cum alias asperiores commodi.</p>
		</div>
		<div class="col-md-4">
			<a class="btn btn-lg btn-secondary btn-block" href="#">Call to
				Action</a>
		</div>
	</div> -->
</div>
<jsp:include page="./module/footer.jsp"></jsp:include>
</body>
</html>
