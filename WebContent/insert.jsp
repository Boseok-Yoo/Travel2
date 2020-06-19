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
   <form class="container" action="insert.do" method="get">
      <h2>글 쓰기</h2>
      <input name="num" value="${dto.num}" hidden="true"> <label for="exampleFormControlInput1">제목</label> <br>
      <div class="form-inline">
         <select class="custom-select" name="location" id="location">
            <!-- <optgroup label="지역"> -->
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
            <!-- </optgroup> -->
         </select> &nbsp; <input name="title" class="form-control" id="exampleFormControlInput1" value="${dto.title}" required="required">
      </div>
	  <br>
      <label for="exampleFormControlInput1">작성자 ${login.id}</label>
      <input name="writer" class="form-control" id="exampleFormControlInput1" value="${login.id}" required="required" readonly>

      <div class="form-group">
      	 <br>
         <label for="exampleFormControlTextarea1">내용</label>
         <textarea class="form-control" id="exampleFormControlTextarea1" rows="5" name="content">${dto.content }</textarea>
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