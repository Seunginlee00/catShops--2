<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 등록</title>
</head>
<body>
<h3>상품 등록</h3>
<form action="productJoinOk" enctype="multipart/form-data" method="post"> <br/>

	이름: <input type="text" name="name" required="required"/> <br/>
	종류: <select name="kind">
		<option value="간식">	간식</option>
		<option value="사료">	사료</option>
		<option value="장난감">장난감</option>
		<option value="모래">모래</option>
		<option value="의류">의류</option>
		</select> <br/>
	가격: <input type="text" name="price" /> <br/>
	재고: <input type="text" name="stock" /> <br/>
	구독서비스 여부: O<input type="radio" name="subscription" value="O" required="required" />
				 X<input type="radio" name="subscription" value="X"  /> <br/>
	세부설명: <input type="text" name="content" /> <br/>

	이미지:<input type="file" name="image" /> <br/>
	<input type="hidden" name="id" value= ${adto.a_id} />
	<input type="submit" value="등록하기" />	
</form>
</body>
</html>