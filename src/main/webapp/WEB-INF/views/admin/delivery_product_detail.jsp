<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문상품 상세</title>
</head>
<body>

	상품 번호 | 상품 이름 | 주문 수량 | 총 주문 금액  <br/><br/><br/>
	<c:forEach items="${ddtos}" var="row">
		<a href="pDetail?number=${row.p_number}"> ${row.p_number} | ${row.p_name} | ${row.d_amount} | ${row.c_sum_price}</a>
		<br/><br/>
	</c:forEach>
</body>
</html>