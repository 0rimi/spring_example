<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${title}</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>

</head>
<body>
	<div class="container">
		<h1>${title}</h1>
		<table class="table table-striped">
			<tr>
				<th>번호</th>
				<td>${seller.id}</td>
			</tr>
			<tr>
				<th>이름</th>
				<td>${seller.name}</td>
			</tr>
			<tr>
				<th>생년월일</th>
				<td>${seller.yyyymmdd}</td>
			</tr>
			<tr>
				<th>이메일</th>
				<td>${seller.email}</td>
			</tr>
			<tr>
				<th>자기소개</th>
				<td>${seller.introduce}</td>
			</tr>
			<tr>
				<th>생성일</th>
				<td>${seller.createdAt}</td>
			</tr>
			<tr>
				<th>수정일</th>
				<td>${seller.updatedAt}</td>
			</tr>
		</table>
	</div>	
	
</body>
</html>