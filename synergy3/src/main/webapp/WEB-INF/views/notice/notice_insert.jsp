<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../module/top.jsp"></jsp:include>
<!DOCTYPE html>

<html>
<head>
</head>
<body>
	<br><br><br>
	<br><br><br><br><h4>&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/home"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>홈</a></h4>
	<div style="text-align:center;font-size:16px;" class="container">
		<br><br><br>
		<form action="${pageContext.request.contextPath}/noticeInsert" method="post" enctype="multipart/form-data">
		<input type="hidden" value="${sessionScope.id}" name="adminId">
			<table class="table table-bordered">
				<tbody>		            	           
		            <tr>	            
		                <th class="active">제목 </th>
		                <td><input type="text" placeholder="제목을 입력하세요. " name="noticeTitle" class="form-control"/></td>	                
		            </tr>
		            <tr>  	            
		                <th class="active">내용 </th>
		                <td><textarea cols="10" placeholder="500자 이내에 입력하세요 " rows="30" name="noticeContent" class="form-control" maxlength="3000"></textarea></td>	            
		            </tr>
		            <tr>	           
		                <th class="active">기부금 이미지 첨부파일 </th>
		                <td><input type="file" name="fileImage"></td>	            
		            </tr>    
		    	</tbody>
			</table><br>		
			<div class="col-lg-offset-6 col-lg-2">
				<input type="submit" class="btn btn-primary btn-lg" id="submit" value="등록"><br><br><br>
			</div>	
		 </form>
	</div>
</body>
</html>
<jsp:include page="../module/footer.jsp"></jsp:include>