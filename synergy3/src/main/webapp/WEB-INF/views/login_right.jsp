<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:include page="./module/top.jsp"></jsp:include>
<!DOCTYPE>
<html>
<head>
</head>
<header>
	<div id="carouselExampleIndicators" class="carousel slide"
		data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<!-- Slide One - Set the background image for this slide in the line below -->
			<div class="carousel-item active"
				style="background-image: url('./resources/image/image1.jpg')">
				<div class="carousel-caption d-none d-md-block">
					<h3>First Slide</h3>
					<p>This is a description for the first slide.</p>
				</div>
			</div>
			<!-- Slide Two - Set the background image for this slide in the line below -->
			<div class="carousel-item"
				style="background-image: url('./resources/image/image2.jpg')">
				<div class="carousel-caption d-none d-md-block">
					<h3>Second Slide</h3>
					<p>This is a description for the second slide.</p>
				</div>
			</div>
			<!-- Slide Three - Set the background image for this slide in the line below -->
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
	</div>
</header>
<body>	
	<div class="text-center container" style="font-size: 15px;">
	<br><br><h1 class="my-4">���Ѻ� �α��� �� ���</h1><br><br>
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
					[ȸ��]<br>
					- ȸ������<br>
					- �α���<br>
					- ���̵� ã��<br>
					- ��й�ȣ ã��<br>
					<br>
					[���ǰ]<br>
					- ���ǰ �˻�<br>
					<br>
					[��α�]<br>
					- ��α� ��ȹ�� �˻�<br>
					- ��α� ���� �˻�<br>
					<br>
					[�Խ���]<br>
					- �Խ��� �˻�<br>
				</div>
			</div>
		</div>
		<div class="col-lg-2.5 mb-4">
			<div class="card h-100">
				<h4 class="card-header"><span style="font-weight:bold">�Ϲ�ȸ��</span></h4>
				<div class="card-body">
					<p class="card-text">
					[ȸ��]<br>
					- ȸ������<br>
					- ȸ������<br>
					- ȸ��Ż��<br>
					- �α���<br>
					- �α׾ƿ�<br>
					<br>
					[ĳ��]<br>
					- ĳ�� ����<br>
					- ĳ�� �˻�<br>
					<br>
					[���ǰ]<br>
					- ���ǰ ���<br>
					- ���ǰ ����<br>
					- ���ǰ ����<br>
					<br>
					[���]<br>
					- ���� ���<br>
					- ���� �˻�<br>
					- ���� ���<br>
					- ���� �˻�<br>
					- ����<br>
					<br>
					[��α�]<br>
					- ��α� ���<br>
					<br>
					[�Խ���]<br>
					- �Խ��� ���� ���<br>
					- �Խ��� ���� �˻�<br>
					</p>
				</div>
				<div class="card-footer">
					<a href="${pageContext.request.contextPath}/autoLogin?id=1&pw=1" class="btn btn-primary">�Ϲ�ȸ�� �α���</a>
				</div>
			</div>
		</div>
		<div class="col-lg-2.5 mb-4">
			<div class="card h-100">
				<h4 class="card-header"><span style="font-weight:bold">��δ�ü</span></h4>
				<div class="card-body">
					<p class="card-text">
					[ȸ��]<br>
					- ȸ������<br>
					- ȸ������<br>
					- ȸ��Ż��<br>
					- �α���<br>
					- �α׾ƿ�<br>
					<br>
					[��α�]<br>
					- ��α� ��ȹ�� ���<br>
					- ��α� ��ȹ�� ����<br>
					- ��α� ��ȹ�� ����<br>
					- ��α� ���ó ���<br>
					- ��α� ���ó ����<br>
					- ��α� ���ó �˻�<br>
					- ��α� ���ó ����<br>
					- ��α� ��� ���� ���<br>
					<br>
					[�Խ���]<br>
					- �Խ��� ���� ���<br>
					- �Խ��� ���� �˻�<br>
					</p>
				</div>
				<div class="card-footer">
					<a href="${pageContext.request.contextPath}/autoLogin?id=3&pw=3" class="btn btn-primary">��δ�ü �α���</a>
				</div>
			</div>
		</div>
		<div class="col-lg-2.5 mb-4">
			<div class="card h-100">
				<h4 class="card-header"><span style="font-weight:bold">������</span></h4>
				<div class="card-body">
					<p class="card-text">
					[ȸ��]<br>
					- ��� ȸ�� �˻�<br>
					- �α���<br>
					- �α׾ƿ�<br>
					<br>
					[ĳ��]<br>
					- ��� ȸ�� ĳ������ �˻�<br>
					<br>
					[���ǰ]<br>
					- ���ǰ ����<br>
					<br>
					[��α�]<br>
					- ��α� ��ȹ�� ����<br>
					- ��α� ���ó ����<br>
					<br>
					[�Խ���]<br>
					- �Խ��� ���� �亯 ���<br>
					<br>
					[��������]<br>
					- �������� ���<br>
					- �������� ����<br>
					- �������� ����<br>
					</p>
				</div>
				<div class="card-footer">
					<a href="${pageContext.request.contextPath}/autoLogin?id=2&pw=2" class="btn btn-primary">������ �α���</a>
				</div>
			</div>
		</div>
	</div>
	</div>
</body>
</html>	
<jsp:include page="./module/footer.jsp"></jsp:include>	