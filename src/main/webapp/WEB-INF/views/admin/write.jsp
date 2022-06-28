<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="ofwriteOK" action="GET">
<input type="text" placeholder="성함 " name="m_name"> <br/>
<input type="text" placeholder="전화번호" name="o_phone"> <br/>
<input type="text" placeholder="상담시간 " name="o_time"> <br/>
<textarea name="o_content"
          rows="5" cols="33">
</textarea> <br/>

	<input type="submit" value ="제출~"/>
</form>
</body>
</html>