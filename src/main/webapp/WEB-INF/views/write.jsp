<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="writeOK" action="GET">
<input type="text" placeholder="제목" name="b_subject"> <br/>
<input type="text" placeholder="작성자" name="b_name"> <br/>
<textarea name="b_content"
          rows="5" cols="33">
</textarea> <br/>

	<input type="submit" value ="글쓰기"/>
</form>
</body>
</html>