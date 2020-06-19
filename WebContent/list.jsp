<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="kr.co.travel2.domain.BoardDTO"%>
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
	<a href="main.jsp"><p>메인</p></a>
	<br>
	<div class="container" style="margin:0 auto">
	<h2 class="text-center">추천 여행지</h2><br>
	
	<c:if test="${empty login.id}">
		<a href="login.jsp">로그인</a>
	</c:if>
	
	<c:if test="${not empty login.id}">
		<a href="logout.do">로그아웃</a>
	</c:if>
	<br>
	<a href="list.do?curPage=1&sid=" class="btn btn-outline-primary ${sid == dto.sid ? 'active' : ''}"  role="button">전체</a>

	
	<c:forEach items="${siteList}" var="dto">
		<a href="list.do?curPage=1&sid=${dto.sid}" class="btn btn-outline-primary ${sid == dto.sid ? 'active' : ''}" role="button">${dto.location}</a>
	</c:forEach>

	<br><br><br>	
	
  <h3 class="text-center">글 목록</h3>
  <h6 class="text-center"><a href="insert.jsp">글 쓰기</a></h6>
  <table class="table table-bordered">
    <thead>
      <tr>
       <th>num</th>				
		<th>지역</th>
		<th>제목</th>
		<th>작성자</th>
		<th>작성일</th>
		<th>조회수</th>
      </tr>
    </thead>
    <tbody>
     
	<c:forEach items="${list}" var="dto">
		<tr>
			<td>${dto.num}</td>
			<td>${dto.location}</td>
			<td width="300px"><c:forEach begin="0" end="${dto.repIndent}">&nbsp;&nbsp;									                  
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
	    <li class="page-item ${to.curPage eq 1 ? 'disabled' : ''}"><a class="page-link" href="list.do?curPage=${to.curPage > 1 ? (to.curPage -1) : 1}">Previous</a></li>
	    <c:forEach begin="${to.beginPageNum}" end="${to.stopPageNum}" var="idx">
	    
	    <c:if test="${to.curPage == idx}">
	    	<li class="page-item active"><a class="page-link" href="list.do?curPage=${idx}">${idx}</a></li>   	
	     </c:if> 	
	      	
	     <c:if test="${to.curPage != idx}">
	     	<li class="page-item"><a class="page-link" href="list.do?curPage=${idx}">${idx}</a></li> 		      
	     </c:if>
	    </c:forEach>    
	    <li class="page-item ${to.curPage eq to.totalPage ? 'disabled' : ''}"><a class="page-link" href="list.do?curPage=${to.curPage < to.totalPage ? (to.curPage + 1) : to.totalPage}">Next</a></li>
	  	</ul>	
	</div>

	</body>
</html>