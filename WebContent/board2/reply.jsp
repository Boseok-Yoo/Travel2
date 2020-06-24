<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

</head>
<body>   
	<div class="jumbotron text-center" style="margin-bottom:0">
  <h1><a href="main.jsp" class="text-dark" style="text-decoration: none">Travel</a></h1>
</div>

	<c:if test="${empty login.id}">
      <a href="signup.jsp" class="link_login">회원가입</a>
      <a href="login.jsp" class="link_login">로그인</a>
   </c:if>
   
   <c:if test="${not empty login.id}">
   	  <p>"<a href="profile.do?id=${login.id}" class="link_join">${login.id}</a>"님 반갑습니다</p>
      <a href="logout.do">로그아웃</a>
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

   <form class="container" action="reply.do" method="get">
   	  <input name="num" value="${dto.num}" hidden="true"> 
      <h2 class="text-center">답글</h2>
      
      
       <label for="exampleFormControlInput1">제목</label><br>
      <div class="form-inline">

         <select class="custom-select" name="location" id="location">
	    	<c:forEach items="${siteList}" var="sito">
		   		<c:if test="${dto.location eq sito.sid}">
		            <option value="${sito.sid}" selected>${sito.location}</option>
		        </c:if>      
			 </c:forEach>		 
         </select> &nbsp;
         
      <input placeholder="제목을 입력하세요" name="title" class="form-control" id="exampleFormControlInput1" required="required">
      </div>
	  <br>
      <label for="exampleFormControlInput1">작성자</label>
      <input name="writer" class="form-control" id="exampleFormControlInput1" value=" ${login.id}" required="required" readonly>

      <div class="form-group">
      	 <br>
         <label for="exampleFormControlTextarea1">내용</label>
         <textarea placeholder="내용을 작성하세요" class="form-control" id="exampleFormControlTextarea1" rows="5" name="content"></textarea>
      </div>
      <button class="btn btn-primary" type="submit">답글</button>     
   </form>

   <script> 
 	   $(document).ready(function() {
       $("#location").val("${dto.location }");
       });
   </script>
</body>
</html>