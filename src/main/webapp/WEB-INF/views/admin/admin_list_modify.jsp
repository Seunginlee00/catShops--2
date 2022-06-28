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
		<form action="aModifyOk" method="post">
			 <input type="text" name="id" value= ${row.a_id} readonly="readonly"/> | <input type="text" name="pw" value= ${row.a_pw} /> | 
			 <input type="text" name="name" value= ${row.a_name} /> | 
			 <input type="text" name="email" value= ${row.a_email} /> | ${row.a_date} |
			 <input type="submit" value="수정">
			 
			 <input type="hidden" name="myId" value= ${adto.a_id} />
		</form>
		<form action="aDeleteOk" method="post">
			<input type="hidden" name="id" value= ${row.a_id} />
			<input type="hidden" name="myId" value= ${adto.a_id} />
			<input type="submit" value="삭제">
		</form>
			<br/><br/>
	</c:forEach>
	
	<form action="aList" method="post">
		<input type="hidden" name="id" value= ${adto.a_id} />
		<input type="submit" value="돌아가기">
	</form>

</body>
</html>