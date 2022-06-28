<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록</title>
</head>
<body>
	아이디 | 비밀번호 | 이름 | 이메일 | 가입 날짜 <br/><br/><br/>
	<c:forEach items="${mdtos}" var="row">
		 <a href="mDetail?id=${row.m_id}">${row.m_id} | ${row.m_pw} | ${row.m_name} | ${row.m_email} | ${row.m_date} |</a>
		<br/><br/>
	</c:forEach>
</body>
</html>