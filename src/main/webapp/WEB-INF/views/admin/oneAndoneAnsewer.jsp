<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="answerOk" method="post">
<c:forEach items="${sdto }" var="row">
	<span>${row.s_number }</span> <br/>
	<span>${row.s_type }</span> <br/>
	<span>${row.s_content }</span> <br/>
	<span>${row.s_dates }</span> <br/>
	<input type="text" name="contents"><br/>
	<input type="hidden" name="number" value="${row.s_number}"/>
	<input type="submit" value="제출하기"/>  <br/>
</c:forEach>
</form>
</body>
</html>