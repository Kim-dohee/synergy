<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:include page="./module/top.jsp"></jsp:include>
<!DOCTYPE>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>Insert title here</title>
</head>
<body>
	<div class="text-center container" style="font-size: 15px;">
		<br><br><h1 class="my-4">[����ȯ��]</h1><br><br>
		<div class="row">
			<div class="col-sm-3" style="padding:15px;">
			<jsp:include page="./module/left.jsp"/>
		</div>
		<div class="col-lg-2.5 mb-4">
		<table class="table table-bordered table-striped">
              <thead>
                  <tr>
                      <th></th>
                      <th colspan="2">
                        	  ����ȯ��
                          <small></small>
                      </th>
                      <th>
                          	����ȯ��
                          <small></small>
                      </th>
                     
                  </tr>
              </thead>
              <tbody>
                  <tr>
                      <th>OS</th>
                      <td colspan="2">Windows 7</td>
                     	<td>Windows 7</td>
                  </tr>
                  <tr>
                      <th>�� ������</th>
                      <td colspan="2">Chrome</td>
                      <td>Chrome ����ȭ</td>
                  </tr>
                  <tr>
                      <th>WAS</th>
                      <td colspan="2">
                         apache-tomcat-9.0.X
                      </td>
                      <td>apache-tomcat-9.0.X</td>
                  </tr>
                  <tr>
                      <th rowspan="9">���߾��</th>
                  </tr>
                  <tr>
                      <th rowspan="3">����
                     	<td>Java 1.8</td>
                     	<td>Servlet 1.2</td>
                  </tr>
                  <tr>
                  	<td>Servlet 1.0</td>
                  	<td>JDK 1.8.X</td>
                  </tr>
                  <tr>
                  	<td></td>
                  	<td>JSP 2.3</td>
                  </tr>
                  <tr>
                  	<th rowspan="5">Ŭ���̾�Ʈ
                 		<td>JavaScript</td>
                  </tr>
                   <tr>
                  	<td>HTML5</td>
                  </tr>
                   <tr>
                  	<td>CSS</td>
                  </tr>
                   <tr>
                  	<td>JSP</td>
                  </tr>
                   <tr>
                  	<td>jQuery</td>
                  </tr>
                  <tr>
                      <th rowspan="3">Framework</th>
                      <td colspan="3">bootstrap 3.3.7</td>
                  </tr>
                  <tr>
                      <td colspan="3">Spring Framework 3.9.3</td>
                  </tr>
                   <tr>
                      <td colspan="3">Mybatis 3.4.6</td>
                  </tr>
                  <tr>
                      <th>DBMS</th>
                      <td colspan="2">HeidiSQL8.0.0.4396</td>
                      <td>HeidiSQL8.0.0.4396.X UTF-8</td>
                  </tr>
                  <tr>
                      <th rowspan="6">Tools</th>
                   	<td colspan="2">Spring Tool Suite 3.9.3</td>
                  </tr>
                  <tr>
                      <td colspan="2">GitHub(<a href="https://github.com/Kim-dohee/synergy.git">github.com/Kim-dohee/synergy.git</a>)</td>
                  </tr>
                  <tr>
                      <td colspan="2">EXERD</td>
                  </tr> 
                  <tr>
                      <td colspan="2">SourceTree</td>
                  </tr> 
                  <tr>
                      <td colspan="2">Maven</td>
                  </tr> 
              </tbody>
          </table>
		</div>
	</div>	
</body>
</html>
<jsp:include page="./module/footer.jsp"></jsp:include>