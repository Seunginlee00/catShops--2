<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고양이 정보</title>
</head>
<body>  	
	<c:forEach items="${cmdtos}" var="row">
		<img src="${pageContext.request.contextPath}/${row.c_r_image}" alt="" /><br/>
		 이름: ${row.c_name }<br/>
		 종: ${row.c_type }<br/>
		 나이: ${row.c_age }살<br/>
		 성별:
		 	<c:if test="${row.c_sex eq 'F'}">
		 		암컷<br/>
			 </c:if> 
		 	<c:if test="${row.c_sex eq 'M'}">
		 		수컷<br/>
			 </c:if>
		 몸무게: ${row.c_weight }kg<br/>
		 중성화 여부: 
		 <c:if test="${row.c_neutering eq 'Y'}">
		 		O<br/>
		 </c:if> 
		 <c:if test="${row.c_neutering eq 'N'}">
		 		X<br/>
		 </c:if>
		 --------------------------------------<br/>
	</c:forEach>
	
	<a href="catModify?id=${dto.m_id}">내 고양이 수정</a>
	<a href="cat">내 고양이 추가</a>
</body>
</html>