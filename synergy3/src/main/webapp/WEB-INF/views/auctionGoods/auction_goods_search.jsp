<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../module/top.jsp"></jsp:include>
<!DOCTYPE>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<br><h1 class="text-center">상품 리스트</h1><br>
		<div class="container bs-example" data-example-id="simple-table" >
		   <table class="table table-striped" >
		     <caption>Optional table caption.</caption>
		     <thead>
		       <tr>
		         <th>제목</th>
		         <th>등록날짜</th>
		         <th>조회수</th>
		       </tr>
		     </thead>
		     <tbody>
		       <tr>
		         <th scope="row">팝니다</th>
		         <td>2018-06-07</td>
		         <td>21</td>
		       </tr>
		     </tbody>
		   </table>
		 </div>
<a href="${pageContext.request.contextPath}/auctionGoodsInsert">상품추가</a>
</body>
</html>