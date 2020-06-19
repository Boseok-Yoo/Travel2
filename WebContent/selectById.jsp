<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div class="container" style="margin:0 auto">
	<h1 class="text-center">회원 정보</h1><br><br>

	<div class="card">
    <div class="card-body">
    	ID: ${dto.id}<br> 
		Name: ${dto.name}<br> 
		Age: ${dto.age}<br><br>
    	<a href="updateui.bo?id=${dto.id}" class="btn btn-outline-success" role="button">수정</a> 
		<a href="delete.bo?id=${dto.id}" class="btn btn-outline-danger" role="button">삭제</a> 
		<a href="select.bo" class="btn btn-outline-primary" role="button">목록</a>
    </div>
  	</div>
	</div>
</body>
</html>