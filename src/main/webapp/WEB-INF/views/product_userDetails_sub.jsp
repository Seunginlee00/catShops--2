<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 상세</title>
</head>
<body>
	<img src="${pageContext.request.contextPath}/${pdto.p_r_image}" alt="" /><br/>
	이름: ${pdto.p_name} <br/>
	종류: ${pdto.p_kind}<br/>
	가격: ${pdto.p_price}<br/>
	세부설명: ${pdto.p_content}<br/><br/>
	
	<form action="subpayment" method="post"> <!-- 장바구니 없이 바로 결제로 -->
		<select name="amount"> <!-- +-로 수량 선택하는걸로 변경원함 -->
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
			<option value="6">6</option>
			<option value="7">7</option>
			<option value="8">8</option>
			<option value="9">9</option>
			<option value="10">10</option>
			<option value="11">11</option>
			<option value="12">12</option>		
		</select>
		<input type="hidden" name="id" value= "${dto.m_id}" />
		<input type="hidden" name="pNumber" value= ${pdto.p_number} />
		<input type="hidden" name="name" value= "${pdto.p_name}" /> 
		<input type="hidden" name="price" value= ${pdto.p_price} /> 
		<input type="hidden" name="image" value= "${pdto.p_r_image}" />
		<input type="submit" value="구독하기">
	</form>

</body>
</html>