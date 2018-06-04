<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../module/top.jsp"></jsp:include>
<!DOCTYPE>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<form class="form-horizontal" role="form" id="frm" name="frm" method="post" action="${pageContext.request.contextPath}/cashRecordInsert">
		<br><h1 class="text-center">캐쉬 사용 내역 조회</h1><br>
		<div class="bs-example" data-example-id="simple-table">
		   <table class="table">
		     <caption>Optional table caption.</caption>
		     <thead>
		       <tr>
		         <th>충전 금액</th>
		         <th>현 총잔액</th>
		         <th>충전 날짜</th>
		       </tr>
		     </thead>
		     <tbody>
		       <tr>
		         <th scope="row">1</th>
		         <td>Mark</td>
		         <td>Otto</td>
		       </tr>
		     </tbody>
		   </table>
		 </div>
	</form>	       
</body>
</html>
<jsp:include page="../module/footer.jsp"></jsp:include>