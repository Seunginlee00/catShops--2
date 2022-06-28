<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록</title>
</head>
<body>
	상품번호 | 이름 | 종류 | 가격 | 재고 | 등록 날짜 <br/><br/><br/>
	<c:forEach items="${pdtos}" var="row">
		<a href="pDetail?number=${row.p_number}">${row.p_number} | ${row.p_name} | ${row.p_kind} | ${row.p_price} | ${row.p_stock} | ${row.p_date} |</a>
		<br/><br/>
	</c:forEach>
	
	<form action="pJoin" method="post">
		<input type="hidden" name="id" value= ${adto.a_id} />
		<input type="submit" value="상품 추가">
	</form>
	
	<form action="pModify" method="post">
		<input type="submit" value="상품 수정">
	</form>

</body>
</html>