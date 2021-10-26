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
h1{
text-align : center;
}
#main table {
margin : auto;
}

td{
padding: 5px 20px 5px 20px;
}
</style>
<body>
<jsp:useBean id="dao" class="com.care.root.member.dao.MemberDAO"/>
<jsp:useBean id="dto" class="com.care.root.member.dto.MemberDTO"/>
<c:set var="list" value="${dao.memberView()}"/>
<c:import url="../default/header.jsp"/>
<div class="wrap">
<h1>MemberView.jsp페이지 입니다.</h1>
<div id="main">
	<table border=1>
		<tr>
			<td>아이디</td><td>비밀번호</td><td>이름</td><td>주소</td>
		</tr>
	<c:forEach var="d" items="${list}">
		<tr>
			<td>${d.id}</td><td>${d.pwd}</td><td><a href="MemberInfo.jsp?id=${d.id}">${d.name }</a></td><td>${d.addr}</td>
		</tr>
	</c:forEach>
		<tr>
			<td style="text-align: right;" colspan="4"><a href="registerView.jsp">회원가입</a></td>
		</tr>
	</table>
</div>
</div>
<c:import url="../default/footer.jsp"/>

</body>
</html>