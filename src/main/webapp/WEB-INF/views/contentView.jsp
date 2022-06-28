<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="modify" action="GET">
<input type="text" placeholder="제목" name="b_subject"><br/>
<input type="text" placeholder="작성자" name="b_name"><br/>
<textarea name="b_content"
          rows="5" cols="33">
</textarea><br/>
<% String b_number = request.getParameter("b_number");%>

<input type="hidden" name="number" value="<%=b_number%>">

	<input type="submit" value ="수정하기"/> <br/>
	
</form>
<form action="delete">
<input type="hidden" name="number" value="<%=b_number%>">
	<input type="submit" value ="삭제하기"/>

</form>
</body>
</html>