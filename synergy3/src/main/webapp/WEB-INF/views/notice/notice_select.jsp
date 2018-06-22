<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../module/top.jsp"></jsp:include>
<!DOCTYPE>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<div class="text-center">
			<br><h1>공지사항</h1><br>
			<div class="container bs-example" data-example-id="simple-table">
				<table class="table table-hover">
					<thead>
						<tr class="active">
							<th>글 번호</th>
							<th>공지사항 제목</th>
							<th>등록자</th>
							<th>공지사항 등록 날짜</th>
							<th>조회수</th>
						</tr>
					</thead>
					<tbody>
							<tr>
								<td>1</td>
								<td>긴급 공지입니다.</td>
								<td>관리자</td>
								<td>2018-06-22</td>
								<td>18</td>    
							</tr>
					</tbody>
				</table>
				<a class="btn btn-primary btn-sm pull-right" href="#" id="btn" >공지사항 등록</a>
			</div>	 
			
	</div>
</body>
</html>
<jsp:include page="../module/footer.jsp"></jsp:include>