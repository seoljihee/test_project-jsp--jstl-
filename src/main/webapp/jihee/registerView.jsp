<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
#main{
text-align:center;
}
input{
width: 200px;
height: 20px;
padding : 3px;
margin : 3px;
}

button{
width : 70px;
padding: 3px;
margin-top: 2px;
}
</style>
<body>
<c:import url="../default/header.jsp"/>
<div class="wrap">
<div id="main">
<h1>registerView.jsp</h1>
회원가입페이지 입니다.
<div id="label">
	<form action="${contextPath}/jihee/register.jsp" method="post">
		<label>id : </label>
		<input type="text" name="id" placeholder="input id"><br>
		<label>pwd : </label>
		<input type="text" name="pwd" placeholder="input pwd"><br>
		<label>name : </label>
		<input type="text" name="name" placeholder="input name"><br>
		<label>address : </label>
		<input type="text" name="addr" placeholder="input address"><br>
		<button type="submit">register</button>
	</form>
</div>
</div>
</div>
<c:import url="../default/footer.jsp"/>
</body>
</html>