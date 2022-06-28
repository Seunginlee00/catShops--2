<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<h1>검색결과 </h1>
		<c:forEach items="${list}" var="row">
 		 상품명: ${row.p_name} | 상품 종류 : ${row.p_kind} | 상품가격 :  ${row.p_price} | 상품 설명 : ${row.p_content}
 		 		<br/><br/>
	</c:forEach>
		<div>${pageMaker }</div>
</body>
</html>