<%@page import="member.MemberDAO"%>
<%@page import="member.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>회원가입한 정보가 넘어오는 공간</h1>
<%-- jstl방식으로 인코딩 처리 해주는 방법 --%>
<fmt:requestEncoding value="utf-8"/>
<%-- 전송방식을 post로 했기 때문에 인코딩 처리 해주기 --%>
<%--
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	
	//value를 얻어오는 방법이다.
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String name = request.getParameter("name");
	String addr = request.getParameter("addr");
	String tel = request.getParameter("tel");
	
	//얻어 온 value를 MemberDTO에 저장하기
	MemberDTO dto = new MemberDTO();
	dto.setId(request.getParameter("id"));
	dto.setPwd(request.getParameter("pwd"));
	dto.setName(request.getParameter("name"));
	dto.setAddr(request.getParameter("addr"));
	dto.setTel(request.getParameter("tel"));
	
	//MemberDTO dto에 저장한 값을 MemberDAO에 있는 register()메소드에 저장하기
	MemberDAO dao = new MemberDAO();
	dao.register(dto);
--%>

<%-- 위의 코드를 jsp코드로 작성해보자 --%>
<%--useBean은 객체를 생성하는 코드이다. id는 인스턴스변수 같은 느낌 --%>
<jsp:useBean id="dto" class="member.MemberDTO"/>
<jsp:useBean id="dao" class="member.MemberDAO"/>

<%-- dto.setId(request.getParameter("id")); 와 같음 --%>
<jsp:setProperty name="dto" property="id" param="id"/>


${dto.getId()}<br>
${dto.id}<br>
<jsp:getProperty property="id" name="dto"/>

<hr>
<%--값을 하나씩 가져오는 것이 아니라 (*)모든값을 가져오겠다 --%>
<%--dto에 있는 변수와 value의 이름이 같다면 param은 생략해도 된다. --%>
<jsp:setProperty name="dto" property="*"/>
id : ${dto.id}<br>
pwd : ${dto.pwd}<br>
name : ${dto.name}<br>
address : ${dto.addr}<br>
tel : ${dto.tel}<br>
<hr>

</body>
</html>