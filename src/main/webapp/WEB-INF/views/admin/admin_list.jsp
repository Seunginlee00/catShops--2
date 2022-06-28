<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 목록</title>
</head>
<body>
	아이디 | 비밀번호 | 이름 | 이메일 | 가입 날짜 <br/><br/><br/>
	<c:forEach items="${adtos}" var="row">
		 ${row.a_id} | ${row.a_pw} | ${row.a_name} | ${row.a_email} | ${row.a_date} |
		<br/><br/>
	</c:forEach>
	
	<form action="aJoin" method="post">
		<input type="hidden" name="id" value= ${adto.a_id} />
		<input type="submit" value="관리자 추가">
	</form>
	
	<form action="aModify" method="post">
		<input type="submit" value="관리자 수정">
	</form>

</body>
</html>