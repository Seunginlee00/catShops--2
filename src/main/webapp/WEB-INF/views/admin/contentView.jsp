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
<form action="ofmodify" action="GET">
<c:forEach items="${list}" var="row">
<input type="text" placeholder="성함 " name="m_name" value="${row.m_name }"><br/>
<input type="text" placeholder="전화번호" name="o_phone" value="${row.o_phone}"> <br/>
<input type="text" placeholder="상담시간 " name="o_time" value="${row.o_time}"> <br/>
<textarea name="o_content"
          rows="5" cols="33" >
          ${row.o_content }
</textarea> <br/>
</c:forEach>
<% String o_number = request.getParameter("o_number");%>

<input type="hidden" name="number" value="<%=o_number%>">

	<input type="submit" value ="수정하기"/> <br/>
</form>
<form action="ofdelete">
<input type="hidden" name="number" value="<%=o_number%>">
	<input type="submit" value ="삭제하기"/>

</form>
</body>
</html>