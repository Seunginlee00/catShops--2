<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="modifyOk" method="post">
	아이디: <input type="text" name = "id" value= ${dto.m_id} readonly="readonly" /><br/>
	비밀번호: <input type="text" name = "pw" value= ${dto.m_pw} /><br/>
	이름: <input type="text" name="name" value= ${dto.m_name} /><br/>
	이메일: <input type="email" name="email" value= ${dto.m_email} /><br/>
	<input type="submit" value="수정"><br/><br/>

</form>
<a href="cInfo?id=${dto.m_id}">내 고양이 </a>

</body>
</html>