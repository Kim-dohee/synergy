<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<head>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script>
			$(document).ready(function(){
				$('#homeBtn').click(function(){
					$(location).attr('href', './');
				});
				$('#introduceBtn').click(function(){
					$(location).attr('href', './loginRight');
				});
			});	
		
		</script>
	</head>
	<body>
	<!-- #E0FF8B -->
		<div style="width:100%;">
			<div style="width:100%;" class="btn-group-vertical btn-group-lg" role="group" aria-label="Vertical button group">
				<button id="homeBtn" type="button" class="btn btn-info">프로젝트 소개</button>
				<button id="introduceBtn"type="button" class="btn btn-default" >권한별 로그인 및 기능</button>
				<!-- <button type="button" class="btn btn-default">Button</button>
				<button type="button" class="btn btn-default">Button</button>
				<button type="button" class="btn btn-default" >Button</button>
				<button type="button" class="btn btn-default">Button</button>
				<button type="button" class="btn btn-default">Button</button>
				<button type="button" class="btn btn-default">Button</button> -->
			</div>
		</div>
	</body>
