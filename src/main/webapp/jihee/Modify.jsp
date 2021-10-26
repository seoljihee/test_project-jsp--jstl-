<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="dao" class="com.care.root.member.dao.MemberDAO"/>
<c:set var="mem" value="${dao.memberInfo(param.id) }"/>
<c:import url="../default/header.jsp"/>
<div class="wrap">
<h1>Modify.jsp</h1>

	<form action="Modify_save.jsp" method="post">
		<input type="hidden" name="id" value="${param.id }">
		id : <label>${param.id }</label><br>
		pwd : <input type="text" name="pwd" value="${mem.pwd }"><br>
		name : <input type="text" name="name" value="${mem.name }"><br>
		address : <input type="text" name="addr" value="${mem.addr }"><br>
		<input type="submit">수정하기</button>
	</form>
</div>
<c:import url="../default/footer.jsp"/>
</body>
</html>