<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
</head>
<body>
	<h1>메인 화면</h1><br>
	
	<a href="signup.jsp">회원 가입</a>
	
	<c:if test="${empty login}">
		<a href="login.jsp">로그인</a>
	</c:if>
	
	<c:if test="${not empty login}">
		<a href="logout.do">로그아웃</a>
	</c:if> <br><br><br>
	
	<a href="#">게시글</a>
	<a href="list.do?curPage=1&sid=">추천 여행지</a>
	<a href="#">여행 메이트 게시판</a>
	<a href="#">숙박 정보</a>
	<a href="#">맛집 정보</a>
	<a href="#">공지사항</a>
	<a href="#">Q&A</a>
	
	
</body>
</html>