<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<head> <meta charset="utf-8"> 
<title>NAVER</title> 
<link rel="stylesheet" href="https://pm.pstatic.net/dist/css/nmain.20200611.css"> 
<title>Insert title here</title>
</head>
<body>


<div id="account" class="sc_login">
<c:if test="${empty login.id}">
<a href="login.jsp" class="link_login" data-clk="log_off.login">Travel 로그인</a>

<div class="sub_area">
<a href="signup.jsp" class="link_join" data-clk="log_off.registration">회원가입</a>
</div>
</c:if>

<c:if test="${not empty login.id}">
	 <p>"<a href="profile.do?id=${login.id}" class="link_join">${login.id}</a>"님 반갑습니다</p>
      <a href="logout.do" class="link_join" data-clk="log_off.registration">로그아웃</a>
</c:if>

</div>

</body>
</html>