<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:import url="../default/header.jsp"/>
<div class="wrap">
<h1>회원가입페이지 입니다.</h1>
	<form action="register.jsp" method="post">
		<input type="text" name="id"  placeholder="input id"><br>
		<input type="text" name="pwd"  placeholder="input pwd"><br>
		<input type="text" name="name"  placeholder="input name"><br>
		<input type="text" name="addr"  placeholder="input address"><br>
		<input type="text" name="tel"  placeholder="input number"><br>
		<input type="submit" value="register">
	</form>
</div>
<c:import url="../default/footer.jsp"/>
</body>
</html>