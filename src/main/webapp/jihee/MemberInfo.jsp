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
<jsp:useBean id="dao" class="com.care.root.member.dao.MemberDAO"/>
<c:set var="mem" value="${dao.memberInfo(param.id) }"/>
<c:import url="../default/header.jsp"/>
<div class="wrap">
<h1>MemberInfo.jsp</h1>
(개인정보를 보여주는 페이지 입니다.)<br>
id : ${mem.id }<br>
pwd : ${mem.pwd }<br>
name : ${mem.name }<br>
address : ${mem.addr }<br>
<button type="button" onclick="location.href='Modify.jsp?id=${mem.id }'">수정</button>
<button type="button">삭제</button>

</div>
<c:import url="../default/footer.jsp"/>
</body>
</html>