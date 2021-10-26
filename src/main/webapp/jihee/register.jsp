<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<fmt:requestEncoding value="utf-8"/>
<jsp:useBean id="dao" class="com.care.root.member.dao.MemberDAO"/>
<jsp:useBean id="dto" class="com.care.root.member.dto.MemberDTO"/>
<jsp:setProperty property="*" name="dto"/>
<c:set var="result" value="${dao.insertMem(dto)}"/>
(회원가입정보를 받아 처리하는 곳)<br>
1. 동일한 아이디로 회원가입을 했다면 다시 회원가입창으로 이동
2. 새로운 아이디로 회원가입을 진행했다면 회원가입을 축하합니다. alert창으로 띄우고 MemberView.jsp로 이동<br>
<c:choose>
	<c:when test="${result eq 1 }">
		<script type="text/javascript">
			alert("회원가입을 축하합니다!!!")
			location.href="${contextPath}/jihee/MemberView.jsp";
		</script>
	</c:when>
	<c:otherwise>
		<script type="text/javascript">
			alert("존재하는 아이디 입니다.")
			location.href="${contextPath}/jihee/registerView.jsp";
		</script>
	</c:otherwise>
</c:choose>

</body>
</html>