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
<%--jstl문법으로 include하는 방법 -> import를 사용한다. --%>
<c:import url="../default/header.jsp"/>

<h1>메인입니다.</h1>

<%--jsp문법으로 include하는 방법 --%>
<jsp:include page="../default/footer.jsp"/>

</body>
</html>