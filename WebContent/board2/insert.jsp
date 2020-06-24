<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert</title>
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
      <a href="signup.jsp">회원가입</a>
      <a href="login.jsp">로그인</a>
   </c:if>
   
   <c:if test="${not empty login.id}">
   	  <p>"<a href="profile.do?id=${login.id}" class="text-success">${login.id}</a>"님 반갑습니다</p>	
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
	
   <form class="container" action="insert.do" method="get">
      <h2 class="text-center">글 쓰기</h2>
      <input name="num" value="${dto.num}" hidden="true"> 
      <label for="exampleFormControlInput1">제목</label><br>
      <div class="form-inline">
         <select class="custom-select" name="location" id="location">
            <option value="001">서울</option>
            <option value="002">부산</option>
            <option value="003">대구</option>
            <option value="004">인천</option>
            <option value="005">광주</option>
            <option value="006">대전</option>
            <option value="007">울산</option>
            <option value="008">세종</option>
            <option value="009">경기</option>
            <option value="010">강원</option>
            <option value="011">충북</option>
            <option value="012">충남</option>
            <option value="013">전북</option>
            <option value="014">전남</option>
            <option value="015">경북</option>
            <option value="016">경남</option>
            <option value="017">제주</option>
            <option value="018">기타</option>
         </select> &nbsp; 
         <input placeholder="제목을 입력하세요" name="title" class="form-control" id="exampleFormControlInput1" value="${dto.title}" required="required">
      </div>
	  <br>
      <label for="exampleFormControlInput1">작성자</label>
      <input name="writer" class="form-control" id="exampleFormControlInput1" value="${login.id}" required="required" readonly>

      <div class="form-group">
      	 <br>
         <label for="exampleFormControlTextarea1">내용</label>
         <textarea placeholder="내용을 작성하세요" class="form-control" id="exampleFormControlTextarea1" rows="5" name="content">${dto.content }</textarea>
      </div>
      <button class="btn btn-primary" type="submit">등록</button>
      
   </form>

   <script>
     
      $(document).ready(function() {
         $("#location").val("${dto.location }");
      });
      
      
      window.onload = function() {//윈도우가 열리면
         var location = "<c:out value='${dto.location}'/>";
         $("#location").val(location).prop("selected", true); //값이 dto.location인 option 선택
      }
  
   </script>
</body>
</html> 


<!-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>글쓰기</h1>
	
	<form action="insert.do" method="post">
		작성자: <input name="writer"><br>
		제목: <input name="title"><br>
		내용: <br>
		<textarea rows="5" name="content"></textarea>		
		<input type="submit" value="submit">
	</form>
</body>
</html> -->