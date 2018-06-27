<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<head>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script>
			$(document).ready(function(){
				$('#homeBtn').click(function(){
					$(location).attr('href', './');
				});
				$('#developmentEnvironmentBtn').click(function(){
					$(location).attr('href', './developmentEnvironment');
				});
				$('#ProcessBtn').click(function(){
					$(location).attr('href', './process');
				});
				$('#erdBtn').click(function(){
					$(location).attr('href', './erd');
				});
				$('#functionBtn').click(function(){
					$(location).attr('href', './function');
				});
				$('#loginRightBtn').click(function(){
					$(location).attr('href', './loginRight');
				});
				$('#introduceBtn').click(function(){
					$(location).attr('href', './introduce');
				});
			});	
		
		</script>
	</head>
	<body>
	<!-- #E0FF8B -->
		<div style="width:100%;">
			<div style="width:100%;" class="btn-group-vertical btn-group-lg" role="group" aria-label="Vertical button group">
				<button id="homeBtn" type="button" class="btn btn-info">프로젝트 소개</button>
				<button id="developmentEnvironmentBtn"type="button" class="btn btn-default" >개발환경</button>
				<button id="ProcessBtn"type="button" class="btn btn-warning" >전체기능 분석도</button>
				<button id="erdBtn"type="button" class="btn btn-default" >ERD</button>
				<button id="functionBtn"type="button" class="btn btn-danger" >주요 기능 및 사용법</button>
				<button id="loginRightBtn"type="button" class="btn btn-default" >권한별 로그인 및 기능</button>
				<button id="introduceBtn"type="button" class="btn btn-success" >팀원 소개</button>
				<!-- <button type="button" class="btn btn-default">Button</button>
				<button type="button" class="btn btn-default">Button</button>
				<button type="button" class="btn btn-default" >Button</button>
				<button type="button" class="btn btn-default">Button</button>
				<button type="button" class="btn btn-default">Button</button>
				<button type="button" class="btn btn-default">Button</button> -->
			</div>
		</div>
	</body>
