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
	<div class="container" style="margin:0 auto">
	<h1 class="text-center">글 자세히 보기</h1>

	<div class="card">
    <div class="card-body">
    	NUM: ${dto.num}<br>
		지역: ${dto.location}<br>
		작성 날짜:${dto.writeday}<br>
		조회수: ${dto.readcnt}<br> 
		작성자: ${dto.writer}<br>
		제목: ${dto.title}<br>
		내용: ${dto.content}<br>
    	<a href="updateui.do?num=${dto.num}" class="btn btn-outline-success" role="button">수정</a>
		<a href="delete.do?num=${dto.num}" class="btn btn-outline-danger" role="button">삭제</a>
		<a href="replyui.do?num=${dto.num}" class="btn btn-outline-info" role="button">답글</a>
		<a href="list.do" class="btn btn-outline-primary" role="button">목록</a>
    </div>
  	</div>
	</div>
	
</body>
</html>