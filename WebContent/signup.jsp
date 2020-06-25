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
	<div class="jumbotron text-center" style="margin-bottom:0">
  <h1><a href="main.jsp" class="text-dark" style="text-decoration: none">Travel</a></h1>
</div>

	<c:if test="${empty login.id}">
      <a href="login.jsp">로그인</a>
   </c:if>
   
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav" style="margin: 0 auto">
      <li class="nav-item">
        <a class="nav-link" href="list.do?curPage=1&sid=">추천 여행지</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="http://172.30.1.50:8089/Travel3/list.do?curPage=1&locationCode=0">여행 메이트 게시판</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="http://172.30.1.38:8089/Travel/main.jsp">숙박 정보</a>
      </li>    
      <li class="nav-item">
        <a class="nav-link" href="http://172.30.1.6:8089/Travel5/index.jsp">맛집 정보</a>
      </li>    
      <li class="nav-item">
        <a class="nav-link" href="http://localhost:8089/Travel/notice_list.jsp">공지사항</a>
      </li>    
      <li class="nav-item">
        <a class="nav-link" href="http://172.30.1.59:8089/Travel6/main.jsp">Q&A</a>
      </li>    
    </ul>
  </div>  
</nav>
	
	
	<br><br>
	<div class="container" style="margin:0 auto">
	<h1 class="text-center">회원가입</h1><br><br>	

    <form class="form-signin" action="signup.do" method="post">	
    
	  <label for="inputID" class="sr-only">ID</label>
	  <input id="id" name="id" class="form-control" placeholder="ID" required autofocus>
 	  <button type="button" class="btn btn-primary btn-sm">아이디 중복 체크</button>
 	  <div><p></p></div>
	  
	  <label for="inputName" class="sr-only">Name</label>
	  <input name="name" class="form-control" placeholder="이름" required autofocus>
	  
	  <label for="inputAge" class="sr-only">Age</label>
	  <input name="age"  type="number" class="form-control" placeholder="나이" required autofocus>
	  
	  
	  <label for="inputPassword" class="sr-only">Password</label>
	  <input name="pw" type="password" class="form-control" placeholder="Password" required autofocus>
	  	  
	  <div class="checkbox mb-3">
    <label>
      <input type="checkbox" value="remember-me" required> 약관 동의</label>   
      </div>
      <input class="btn btn-lg btn-primary btn-block" type="submit" value="회원가입">
  
	</form>			
	</div>
	 <script type="text/javascript">
    	$(document).ready(function(){
    		$("button").click(function(event){
				event.preventDefault();
				var id = $("#id").val();
				
				$.ajax({
					type : "get", 
					url : "IdCheck",
					data : {
						id : id
					},
					dataType : "text",
					success : function(result) {
						/* $("p").text(result); */
						alert(result);
					}
				});
			});
    	}); 
    </script>
</body>
</html>