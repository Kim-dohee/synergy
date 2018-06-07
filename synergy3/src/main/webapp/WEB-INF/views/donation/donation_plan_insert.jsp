<!-- [김도희] -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../module/top.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<div style="text-align:center;font-size:16px;">
		<br><br><br>
		<img src="${pageContext.request.contextPath}/resources/image/donationplaninsert.png" width="50%" height="10%">
		<br><br><br>
	<div class="container">
		<form action="${pageContext.request.contextPath}/donationPlanInsert" method="post" enctype="multipart/form-data">
			<table class="table table-bordered">
				<tbody>		            
		            <tr>	            
		                <th class="active">제목 </th>
		                <td><input type="text" placeholder="제목을 입력하세요. " name="donationPalnTitle" class="form-control"/></td>	                
		            </tr>
		            <tr>	            
		                <th class="active">내용 </th>
		                <td><textarea cols="10" placeholder="500자 이내에 입력하세요 " rows="30" name="donationPalnContent" id="donationPalnContent" class="form-control" maxlength="500"></textarea></td>	            
		            </tr>
		            <tr>	            
		                <th class="active">목적 </th>
		                <td><textarea cols="10" placeholder="100자 이내에 입력하세요" rows="10" name="donationPalnPurpose" class="form-control" maxlength="30"></textarea></td>	            
		            </tr>
		            <tr>	            
		                <th class="active">모집 목표액</th>
		                <td><input type="text" placeholder="숫자만 입력하세요" name="donationPalnGoalPrice" class="form-control"/></td>	            
		            </tr>
		            <tr>	            
		                <th class="active">기부금 사용기간</th>
		                <td><input name="donationPalnUseTerm" id="date" type="date">이내</td>	            
		            </tr>
		            <tr>	           
		                <th class="active">첨부파일 </th>
		                <td><input type="file" name="fileName"></td>	            
		            </tr>    
		    	</tbody>
			</table>		
            <input type="button" value="reset" class="pull-left"/>
            <input type="button" value="글 목록으로... " class="pull-right" onclick="javascript:location.href='list.jsp'"/>
		 	<input type="submit" value="등록" class="pull-right"/>
		 	<br><br><br>
		 </form>
	</div>
	</div>	
</body>
</html>
<jsp:include page="../module/footer.jsp"></jsp:include>