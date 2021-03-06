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
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
   
   
<div class="jumbotron text-center" style="margin-bottom:0">
  <h1><a href="main.jsp" class="text-dark" style="text-decoration: none">Travel</a></h1>
</div>

<c:if test="${empty login.id}">
      <a href="signupui.do">회원가입</a>
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
   <div class="container" style="margin:0 auto">
   <a href="list.do?curPage=1&sid=" class="btn btn-outline-primary"  role="button">전체</a>

   
   <c:forEach items="${siteList}" var="dto">
      <a href="list.do?curPage=1&sid=${dto.sid}" class="btn btn-outline-primary ${sid == dto.sid ? 'active' : ''}" role="button">${dto.location}</a>
   </c:forEach>

   <br><br><br>   
   
  <h3 class="text-center">추천 여행지</h3>
  
  <c:if test="${not empty login.id}">	
 	 <h6><a href="insertui.do" class="btn btn-outline-success">글 쓰기</a></h6>
  </c:if>

   <c:if test="${empty login.id}">
 	 <h6><a href="login.jsp" class="btn btn-outline-success">글 쓰기</a></h6>
  </c:if>	
  
  <table class="table table-bordered">
    <thead>
      <tr>
      <th>번호</th>            
      <th>지역</th>
      <th>제목</th>
      <th>작성자</th>
      <th>작성일</th>
      <th><i class="far fa-eye"></i></th>
      </tr>
    </thead>
    
    <tbody>    
   <c:forEach items="${list}" var="dto">
      <tr>
         <td>${dto.num}</td>   
         <td>${dto.location}</td>    
         <td width="300px">
         <c:forEach begin="1" end="${dto.repIndent}">
        <svg class="bi bi-arrow-return-right" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  		<path fill-rule="evenodd" d="M10.146 5.646a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708-.708L12.793 9l-2.647-2.646a.5.5 0 0 1 0-.708z"/>
  		<path fill-rule="evenodd" d="M3 2.5a.5.5 0 0 0-.5.5v4A2.5 2.5 0 0 0 5 9.5h8.5a.5.5 0 0 0 0-1H5A1.5 1.5 0 0 1 3.5 7V3a.5.5 0 0 0-.5-.5z"/>
		</svg>
		</c:forEach>                                            
            <a href="read.do?num=${dto.num}">${dto.title}</a>
         </td>
         <td>${dto.writer}</td>
         <td>${dto.writeday}</td>
         <td>${dto.readcnt}</td>
      </tr>
   </c:forEach>
   </tbody>
  </table>

        <ul class="pagination justify-content-center" style="margin: 0 auto;">
	       <li class="page-item ${to.curPage eq 1 ? 'disabled' : ''}">
	       		<a class="page-link" href="list.do?curPage=${to.curPage > 1 ? (to.curPage -1) : 1}"><</a>
	       </li>
       <c:forEach begin="${to.beginPageNum}" end="${to.stopPageNum}" var="idx">
       
       <c:if test="${to.curPage == idx}">
          <li class="page-item active">
          	<a class="page-link" href="list.do?curPage=${idx}&sid=${sid}">${idx}</a>
   		  </li>      
        </c:if>    
            
        <c:if test="${to.curPage != idx}">
           <li class="page-item"><a class="page-link" href="list.do?curPage=${idx}&sid=${sid}">${idx}</a></li>             
        </c:if>
       </c:forEach>    
       <li class="page-item ${to.curPage eq to.totalPage ? 'disabled' : ''}"><a class="page-link" href="list.do?curPage=${to.curPage < to.totalPage ? (to.curPage + 1) : to.totalPage}">></a></li>
        </ul>   
   </div>

   </body>
</html>