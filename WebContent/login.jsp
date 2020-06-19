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
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<br>
	
	<!-- <div class="container" style="margin: 0 auto">

		<h1 class="text-center">로그인</h1>
		<br>
		<br>
		<form class="form-signin" action="login.do" method="post">


			<div class="row">
				<div class="col-sm-12">
					<label for="inputID" class="sr-only">ID</label> 
					<input name="id" class="form-control" placeholder="ID" required autofocus>
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-sm-12">
					<label for="inputPassword" class="sr-only">Password</label> 
					<input name="pw" type="password" class="form-control" placeholder="Password" required>
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-sm-12">
					<button class="btn btn-lg btn-primary btn-block" type="submit">로그인</button>
				</div>
			</div>
		</form>
	</div> -->
	
	
<div class="container" style="margin: 0 auto">
		<div class="card" style="width: 500px">
   			<div class="card-body" style="padding-top: 50px;padding-bottom: 70px;padding-right: 30px;padding-left: 30px;">
			<h2 class="text-center">로그인</h2>
    		<form class="form-signin" action="login.do" method="post">
    			<label for="inputID" class="sr-only">ID</label> 
				<input name="id" class="form-control" placeholder="ID" required autofocus>
    		<br>
    			<label for="inputPassword" class="sr-only">Password</label> 
				<input name="pw" type="password" class="form-control" placeholder="Password" required>
			<br>	
				<button class="btn btn-lg btn-primary btn-block" type="submit">로그인</button>
			</form>	
   		</div>
	</div>
</div>

</body>
</html>