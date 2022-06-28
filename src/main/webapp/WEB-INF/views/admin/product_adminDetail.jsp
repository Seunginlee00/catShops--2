<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품상세</title>
</head>
<body>

   <img src="${pdto.p_image}"><br/>
   	상품번호: ${pdto.p_number}<br/>
	이름: ${pdto.p_name} <br/>
	종류: ${pdto.p_kind}<br/>
	가격: ${pdto.p_price}<br/>
	총매출: ${pdto.p_total}<br/> 
	재고: ${pdto.p_stock}<br/>
	구독서비스 여부: ${pdto.p_subscription} <br/>
	등록날짜: ${pdto.p_date}<br/>
	세부설명: ${pdto.p_content}<br/><br/>
	
	<form action="pModify" method="post">
		<input type="hidden" name="number" value= ${pdto.p_number} /> 
		<input type="submit" value="수정하기">
	</form>
	
	<form action="pDeleteOk" method="post">
		<input type="hidden" name="number" value= ${pdto.p_number} />
		<input type="hidden" name="id" value=${adto.a_id} /> 
		<input type="submit" value="삭제하기">
	</form>
	
	<form action="pList" method="post">
		<input type="hidden" name="id" value=${adto.a_id} /> 
		<input type="submit" value="돌아가기">
	</form>

</body>
</html>