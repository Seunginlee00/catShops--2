<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 이미지 수정</title>
</head>
<body>
<form action="pImgModifyOk" method="post" enctype="multipart/form-data">
	기존 이미지<br/><img src="${pdto.p_image}">
	<input type="hidden" name="number" value=${pdto.p_number}><br/>
	수정 이미지: <br/><input type="file" name="image" /><br/><br/>
	<input type="hidden" name="kind" value= ${pdto.p_kind} />
	<input type="submit" value="이미지 수정">
</form>

<form action="pModify">
	<input type="hidden" name="number" value=${pdto.p_number}>
	<input type="submit" value="취소"> 
</form>
</body>
</html>