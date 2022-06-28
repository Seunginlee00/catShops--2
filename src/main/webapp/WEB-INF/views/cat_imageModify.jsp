<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고양이 이미지 수정</title>
</head>
<body>
<form action="catImgModifyOk" method="post" enctype="multipart/form-data">
	기존 이미지<br/><img src="${pageContext.request.contextPath}/${cmdto.c_r_image}" alt="" />
	<input type="hidden" name="id" value=${dto.m_id}>
	<input type="hidden" name="name" value=${cmdto.c_name}><br/>
	수정 이미지: <br/><input type="file" name="image" /><br/><br/>
	<input type="submit" value="이미지 수정">
</form>

<form action="pModify">
	<input type="hidden" name="id" value=${cmdto.m_id}>
	<input type="submit" value="취소"> 
</form>
</body>
</html>