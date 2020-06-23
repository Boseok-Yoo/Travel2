<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="login.jsp" method="get">
		<select name="num" multiple>
			<option value="01">1</option>
			<option value="02">2</option>
			<option value="03">3</option>
			<option value="04" selected>4</option>
			<option value="05">5</option>
		</select>
		<input type="submit" value="check">
	</form>
</body>
</html>