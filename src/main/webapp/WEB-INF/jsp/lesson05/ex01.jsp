<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL Core 라이브러리(1)</title>
</head>
<body>
	<h1>1. 변수 정의(c:set)</h1>
	<c:set var="num1" value="6724" />
	num1 : ${num1}<br>
	<c:set var="num2">1124</c:set>
	num2 : ${num2 }<br>
	num1 + num2 : ${num1+num2 } <%-- 숫자끼리만 더할 수 있다 --%>
	
	<h1>2. 변수 출력하기(c:out)</h1>
	num1 : <c:out value="${num1 }"/><br>
	<c:out value="Hello world!!!"/><br>
	
	<%-- value안 문구 그대로 출력된다 --%>
	<c:out value="<script>alert('알림창띄우기');</script>"/>
	<%-- value안 문구 그대로 출력된다 --%>
	<c:out value="<script>alert('알림창띄우기');</script>" escapeXml="true"/>
	<%-- value안 스크립트가 수행된다 
	<c:out value="<script>alert('알림창띄우기');</script>" escapeXml="false"/>--%>
	
	
	<h1>3. 조건문(c:if)</h1>
	<c:if test="${num1>1924}">
		num1은 1924보다 크다.<br>
	</c:if>
	<c:if test="${num1 == 6724 }">
		num1은 6724다.<br>
	</c:if>
	<c:if test="${num1 eq 6724 }">
		num1은 6724다.<br>
	</c:if>
	<c:if test="${num1 ne 1124 }">
		num1은 1124가 아니다.<br>
	</c:if>
	<c:if test="${not empty num1}">
		num1은 비어있지 않다.<br>
	</c:if>
</body>
</html>