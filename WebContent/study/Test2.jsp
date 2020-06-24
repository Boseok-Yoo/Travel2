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
	<%
		String date = request.getParameter("date");
		String datetime = request.getParameter("datetime");
		String datetimelocal = request.getParameter("datetime-local");
		String month = request.getParameter("month");
		String time = request.getParameter("time");
		String week = request.getParameter("week");
		String color = request.getParameter("color");
		String email = request.getParameter("email");
		String tel = request.getParameter("tel");
		String search = request.getParameter("search");
		String range = request.getParameter("range");
		String number = request.getParameter("name");
		String url = request.getParameter("url");
	%>
	
	<%=date %><br>
	<%=datetime %><br>
	<%=datetimelocal %><br>
	<%=month %><br>
	<%=time %><br>
	<%=week %><br>
	<%=color %><br>
	<%=email %><br>
	<%=tel %><br>
	<%=search %><br>
	<%=range %><br>
	<%=number %><br>
	<%=url %><br>
	
	<hr>
	 ${param.date}<br>
	${param.datetime}<br>
	${param["datetime-local"]}<br>
	${param["month"]}<br>
	${param["time"]}<br>
	${param["week"]}<br>
	${param["color"]}<br>
	${param["email"]}<br>
	${param["tel"]}<br>
	${param["search"]}<br>
	${param["range"]}<br>
	${param["number"]}<br>
	${param["url"]}<br>
	
	<hr>
	
	<div class="container">
  <h2>정보</h2>
  <p>please study u stupid piece of shit</p>            
  <table class="table table-hover">
    <thead>
      <tr>
        <th>date</th>
        <th>datetime</th>
        <th>datetimelocal</th>
        <th>month</th>
        <th>time</th>
        <th>week</th>
        <th>color</th>
        <th>email</th>
        <th>tel</th>
        <th>search</th>
        <th>range</th>
        <th>number</th>
        <th>url</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>${param.date}</td>
        <td>${param.datetime}</td>
        <td>${param["datetime-local"]}</td>
        <td>${param["month"]}</td>
        <td>${param["time"]}</td>
        <td>${param["week"]}</td>
        <td>${param["color"]}</td>
        <td>${param["email"]}</td>
        <td>${param["tel"]}</td>
        <td>${param["search"]}</td>
        <td>${param["range"]}</td>
        <td>${param["number"]}</td>
        <td>${param["url"]}</td>
      </tr>
    </tbody>
  </table>
</div>
	
</body>
</html>