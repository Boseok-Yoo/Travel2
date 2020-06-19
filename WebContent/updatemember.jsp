<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"><meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script><title>Insert title here</title>
</head>
<body>
	<br><br>
	<div class="container" style="margin:0 auto">
	<h1 class="text-center">회원 정보 수정</h1><br><br>	

    <form class="form-signin" action="signin.do" method="post">	
    
	  <label for="inputID" class="sr-only">ID</label>
	  <input name="id" value="${dto.id}" class="form-control" placeholder="ID" required autofocus readonly>
	  
	  <label for="inputName" class="sr-only">Name</label>
	  <input name="Name" value="${dto.name}" class="form-control" placeholder="이름" required autofocus>
	  
	  <label for="inputAge" class="sr-only">Age</label>
	  <input name="Age" value="${dto.age}" type="number" class="form-control" placeholder="나이" required autofocus>
	  
	  
	  <label for="inputPassword" class="sr-only">Password</label>
	  <input name="pw" value="${dto.pw}" type="password" class="form-control" placeholder="Password" required autofocus>
	  	  
  	  <br><button class="btn btn-lg btn-primary btn-block" type="submit">수정</button>
  
	</form>			
	</div>
</body>
</html>