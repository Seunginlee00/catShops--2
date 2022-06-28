<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 메인</title>
</head>
<body>
<h1>관리자 페이지</h1>

<form action="aList" method="post">
	<input type="hidden" name="id" value= ${adto.a_id} />
	<input type="submit" value="관리자 관리">
</form>

<form action="mList" method="post">
	<input type="hidden" name="id" value= ${adto.a_id} />
	<input type="submit" value="회원 관리">
</form>

<form action="pList" method="post">
	<input type="hidden" name="id" value= ${adto.a_id} />
	<input type="submit" value="상품 관리">
</form>

<form action="logout" method="post">
	<input type="submit" value="로그아웃" />
</form>

</body>
</html>