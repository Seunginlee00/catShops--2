<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 수정</title>
</head>
<body>	
	<form action="pModifyOk" method="post" >
		<img src="${pdto.p_image}"> <!-- 크롬쓰면 이미지 깨짐 해결법 찾기!!!!!!!!! -->
		<input type="hidden" name="image" value= ${pdto.p_image} /><br/>
		상품번호:<input type="hidden" name="number" value=${pdto.p_number} /> 
				${pdto.p_number}<br/>
		이름: <input type="text" name="name" value="${pdto.p_name}" /> <br/>
		
		<c:if test="${pdto.p_kind eq '간식'}">
			종류: <select name="kind">
			<option value="간식">	간식</option>
			<option value="사료">	사료</option>
			<option value="장난감">장난감</option>
			<option value="모래">모래</option>
			<option value="캔">캔</option>
			<option value="의류">의류</option>
			</select> <br/>
		</c:if>
		<c:if test="${pdto.p_kind eq '사료'}">
			종류: <select name="kind">
			<option value="사료">	사료</option>
			<option value="간식">	간식</option>
			<option value="장난감">장난감</option>
			<option value="모래">모래</option>
			<option value="캔">캔</option>
			<option value="의류">의류</option>
			</select> <br/>
		</c:if>
		<c:if test="${pdto.p_kind eq '장난감'}">
			종류: <select name="kind">
			<option value="장난감">장난감</option>
			<option value="간식">	간식</option>
			<option value="사료">	사료</option>
			<option value="모래">모래</option>
			<option value="캔">캔</option>
			<option value="의류">의류</option>
			</select> <br/>
		</c:if>
		<c:if test="${pdto.p_kind eq '모래'}">
			종류: <select name="kind">
			<option value="모래">모래</option>
			<option value="간식">	간식</option>
			<option value="사료">	사료</option>
			<option value="장난감">장난감</option>
			<option value="캔">캔</option>
			<option value="의류">의류</option>
			</select> <br/>
		</c:if>
		<c:if test="${pdto.p_kind eq '캔'}">
			종류: <select name="kind">
			<option value="캔">캔</option>
			<option value="간식">	간식</option>
			<option value="사료">	사료</option>
			<option value="장난감">장난감</option>
			<option value="모래">모래</option>
			<option value="의류">의류</option>
			</select> <br/>
		</c:if>
		<c:if test="${pdto.p_kind eq '의류'}">
			종류: <select name="kind">
			<option value="의류">의류</option>
			<option value="캔">캔</option>
			<option value="간식">	간식</option>
			<option value="사료">	사료</option>
			<option value="장난감">장난감</option>
			<option value="모래">모래</option>
			</select> <br/>
		</c:if>
		
		가격: <input type="text" name="price" value=${pdto.p_price} /><br/>
		총매출: ${pdto.p_total}<br/> 
		재고: <input type="text" name="stock" value=${pdto.p_stock} /><br/>
		구독서비스 여부:
			<c:if test="${pdto.p_subscription eq 'O'}">
				O<input type="radio" name="subscription" value="O" required="required" checked="checked"/>
				 X<input type="radio" name="subscription" value="X"  /><br/>
			</c:if>
			<c:if test="${pdto.p_subscription eq 'X'}">
				O<input type="radio" name="subscription" value="O" required="required" />
				 X<input type="radio" name="subscription" value="X" checked="checked"/><br/>
			</c:if>
		등록날짜: ${pdto.p_date}<br/>
		세부설명: <input type="text" name="content" value="${pdto.p_content}" /><br/><br/> 
		<input type="submit" value="수정하기">
	</form>
	
	<form action="pImgModify" method="post">
		<input type="hidden" name="number" value=${pdto.p_number}>
		<input type="submit" value="사진 수정">
	</form>
	
	<form action="pDetail" method="post">
		<input type="hidden" name="number" value=${pdto.p_number}>
		<input type="submit" value="돌아가기">
	</form>
	

</body>
</html>