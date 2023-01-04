<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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


</head>
<body>
	<div class="container">
		<h1>회원가입</h1>
		<!-- http://localhost/lesson04/quiz01/add_seller -->
		<form method="post" action="/lesson06/ex01/add_user">
			<div class="form-group">
				<label for="name">이름</label>
				<input type="text" id="name" name="name" class="form-control col-4" placeholder="이름을 입력해주세요">
			</div>
			<div class="form-group">
				<label for="yyyymmdd">생년월일</label>
				<input type="text" id="yyyymmdd" name="yyyymmdd" class="form-control col-4" placeholder="ex) 19970808">
			</div>
			<div class="form-group">
				<label for="email">이메일</label>
				<input type="text" id="email" name="email" class="form-control col-4" placeholder="ex) yh@gmail.com">
			</div>
			<div class="form-group">
				<label for="introduce">자기소개</label>
				<textarea id="introduce" name="introduce" class="form-control col-4" rows="4"></textarea>
			</div>
			
			<!-- form태그를 위한 submit 버튼 -->
			<!-- <button type="submit" class="btn btn-success" value="회원가입">회원가입</button> -->
			
			<!-- ajax를 위한 단순 버튼 -->
			<input type="button" id="join" class="btn btn-success" value="회원가입">
		</form>
	</div>
	
	<script>
		$(document).ready(function(){
			
			// 1) jquery의 submit 기능 이용하기
			<%--
			$('form').on('submit',function(e){	// e: event 기능
				//alert('서브밋');
				//e.preventDefault(); // (e)객체가 이벤트(서브밋) 되는 것을 막는다.
				
				// validation(유효성검사)
				let name = $('#name').val().trim();
				let yyyymmdd = $('#yyyymmdd').val().trim();
				let email = $('#email').val().trim();
				
				if (name.length == ''){
					alert('이름을 입력하세요');
					return false; // submit인 경우엔 이렇게
				}
				if (yyyymmdd.length < 1){
					alert('생년월일을 입력하세요');
					return false;
				}
				
				//여기까지 도달하면
				alert('서브밋');	
			}); --%>
			
			// 2) jquery의 ajax 통신 이용하기
			$('#join').on('click', function(){
				
				// validation(유효성검사)
				let name = $('#name').val().trim();
				let yyyymmdd = $('#yyyymmdd').val().trim();
				
				if (name.length == ''){
					alert('이름을 입력하세요');
					return;
				}
				if (yyyymmdd.length < 1){
					alert('생년월일을 입력하세요');
					return;
				}	
				if(isNaN(yyyymmdd)) { // 모두 숫자가 아닌경우 참
					alert("숫자만 입력해주세요")
					return;
				}
				
				let email = $('#email').val().trim();
				console.log(email);
				
				let introduce = $('#introduce').val();
				console.log(introduce);
				
				// AJAX
				$.ajax({
					// Request
					type:"POST"
					, url:"/lesson06/ex01/add_user"
					, data:{"name":name, "yyyymmdd":yyyymmdd, "email":email, "introduce":introduce}
					
					// Response
					, success:function(data) {
						alert(data);
						// 화면 이동
						location.href = "/lesson06/ex01/after_add_user_view";
					}
					, complete:function(data) {
						alert("완료");
					}
					, error:function(e) {
						alert("에러");
					}
				});
				
			});
			
		});
	</script>
	
</body>
</html>