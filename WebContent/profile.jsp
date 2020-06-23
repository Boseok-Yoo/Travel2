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
	<div class="jumbotron text-center" style="margin-bottom:0">
	  <h1><a href="main.jsp" class="text-dark" style="text-decoration: none">Travel</a></h1>
	</div>
	
	<c:if test="${empty login.id}">
	      <a href="signup.jsp">회원가입</a>
	      <a href="login.jsp">로그인</a>
	   </c:if>
	   
	   <c:if test="${not empty login.id}">
	   	  <p>"${login.id}"님 반갑습니다</p>	
	      <a href="logout.do">로그아웃</a>
	   </c:if><br>
	   
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
	   <br>
	  
	 <div class="container" style="margin:0 auto">
	<h1 class="text-center">${login.id}님의 정보</h1><br><br>

	<div class="card">
    <div class="card-body">
    	ID: ${dto.id}<br> 
		이름: ${dto.name}<br> 
		나이: ${dto.age}<br><br>
 
		<c:if test="${dto.id eq login.id}">
			<a href="updatememberui.do?id=${dto.id}" class="btn btn-outline-success" role="button">수정</a> 
			<a href="signout.do?id=${dto.id}" class="btn btn-outline-danger" role="button" onclick="if(!confirm('삭제하시겠습니까?')){return false;}">삭제</a>
		</c:if>
			<a href="list.do" class="btn btn-outline-primary" role="button">목록</a>

    </div>
  	</div>
	</div>


</body>
</html>