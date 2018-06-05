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
		<br><br><br><img src="${pageContext.request.contextPath}/resources/image/donationplaninsert.png" width="50%" height="10%">
		<br><br><br>
	<div class="container">
		<form action="write_ok.jsp" method="post" encType="multiplart/form-data">
			<table class="table table-bordered">
				<tbody>		            
		            <tr>	            
		                <th class="active">제목 </th>
		                <td><input type="text" placeholder="제목을 입력하세요. " name="subject" class="form-control"/></td>	                
		            </tr>
		            <tr>	            
		                <th class="active">내용 </th>
		                <td><textarea cols="10" placeholder="내용을 입력하세요. " rows="10" name="content" class="form-control"></textarea></td>	            
		            </tr>
		            <tr>	           
		                <th class="active">첨부파일 </th>
		                <td><input type="text" placeholder="파일을 선택하세요. " name="filename" class="form-control"/></td>	            
		            </tr>
		            <tr>            
		                <th class="active">비밀번호 </th>
		                <td><input type="password" placeholder="비밀번호를 입력하세요" class="form-control"/></td>	            
		            </tr>      
		    	</tbody>
			</table>		
            <input type="button" value="reset" class="pull-left"/>
            <input type="button" value="글 목록으로... " class="pull-right" onclick="javascript:location.href='list.jsp'"/>
		 	<input type="button" value="등록" onclick="sendData()" class="pull-right"/>
		 	<br><br><br>
		 </form>
	</div>
	</div>	
</body>
</html>
<jsp:include page="../module/footer.jsp"></jsp:include>