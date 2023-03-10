<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<%-- AJAX 사용시엔 jquery가 원본이어야 한다 --%>

<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script> 

	<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

	<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>

	<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>


<title>이름 중복 확인</title>
</head>
<body>
	<div class="container">
		<h1>회원가입</h1>
		
		<div class="form-group">
			<label for="name">이름</label>
			<div class="d-flex">
				<input type="text" id="name" class="form-control col-3">
				<button type="button" class="btn btn-info ml-2" id="nameCheckBtn">중복확인</button>
			</div>
			
			<small id="nameStatusArea"></small>
			
		</div>
		
		<button type="button" class="btn btn-success" id="joinBtn">회원가입</button>
	</div>
	
	<script>
		
		$(document).ready(function(){
			
			// 이름 중복 체크
			$('#nameCheckBtn').on('click', function(){
				
				//console.log('중복확인클릭');
				//nameStatusArea의 하위 태그들 초기화
				$('#nameStatusArea').empty();
				
				let name = $('#name').val().trim();
				
				// 유효성 검사
				if(name.length < 1){
					$('#nameStatusArea').append('<span class="text-danger">이름이 비어있습니다.</span>');
					return;
				}
				
				// 이름 중복 확인
				$.ajax({
					
					//request
					type:"GET"
					,url:"/lesson06/ex02/is_duplication"
					,data:{"name":name} //json으로 보냄	
					
					//response
					,success:function(data){
						if(data.isDuplication){	/*true면 중복*/
							console.log('중복');
							$('#nameStatusArea').append('<span class="text-danger">중복된 이름입니다.</span>');
						}
					},complete:function(){
					
					},error:function(e){
						alert("실패"+e);
					}
					
					
				});
				
			});
			
		});
		
	</script>
	
</body>
</html>