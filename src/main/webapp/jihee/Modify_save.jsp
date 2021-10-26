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
<body>
<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="dao" class="com.care.root.member.dao.MemberDAO"/>
<jsp:useBean id="dto" class="com.care.root.member.dto.MemberDTO"/>
<jsp:setProperty property="*" name="dto"/>
<c:set var="result" value="${dao.modify_save(dto)}"/>
<c:choose>
	<c:when test="${result eq 1 }">
		<script type="text/javascript">
			alert("수정이 완료 되었습니다.")
			location.href="${contextPath}/jihee/MemberInfo.jsp";
		</script>
	</c:when>
	<c:otherwise>
		<script type="text/javascript">
			alert("저장하지 못했습니다.")
			location.href="${contextPath}/jihee/MemberInfo.jsp";
		</script>
	</c:otherwise>
</c:choose>
</body>
</html>