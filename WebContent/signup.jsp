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
<title>SignIn</title>
</head>
<body>
	<br><br>
	<div class="container" style="margin:0 auto">
	<h1 class="text-center">회원가입</h1><br><br>	

    <form class="form-signin" action="signup.do" method="get">	
    
	  <label for="inputID" class="sr-only">ID</label>
	  <input name="id" class="form-control" placeholder="ID" required autofocus>
	  
	  <label for="inputName" class="sr-only">Name</label>
	  <input name="name" class="form-control" placeholder="이름" required autofocus>
	  
	  <label for="inputAge" class="sr-only">Age</label>
	  <input name="age"  type="number" class="form-control" placeholder="나이" required autofocus>
	  
	  
	  <label for="inputPassword" class="sr-only">Password</label>
	  <input name="pw" type="password" class="form-control" placeholder="Password" required>
	  	  
	  <div class="checkbox mb-3">
    <label>
      <input type="checkbox" value="remember-me"> 약관 동의</label>   
      </div>
  	<button class="btn btn-lg btn-primary btn-block" type="submit">회원 가입</button>
  
	</form>			
	</div>
</body>
</html>