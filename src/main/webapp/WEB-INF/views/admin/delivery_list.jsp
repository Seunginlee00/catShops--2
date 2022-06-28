<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배송내역 목록</title>
</head>
<body>
	주문번호 | 회원 아이디 | 수령인 | 우편번호 | 배송주소 | 배송메세지 | 배송여부 | 주문 날짜 <br/><br/><br/>
	<c:forEach items="${ddtos}" var="row">
		<a href="dDetail?number=${row.d_number}"> ${row.d_number} | ${row.m_id} | ${row.d_recipient} | ${row.d_postcode} | ${row.d_destination} | ${row.d_message} | ${row.d_state} | ${row.d_date} </a>
		<br/><br/>
	</c:forEach>

</body>
</html>