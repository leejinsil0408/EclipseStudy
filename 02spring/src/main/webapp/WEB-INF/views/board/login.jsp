<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

get방식 : 눈에 보이는 주소
<form action="/ex/board/checkId" method="get">
	<input type="text" name="id"><br>
	<input type="text" name="pw"><br>
	<input type="submit" value="전송"><br>
</form><br>

post방식 : 눈에 안보이는 쿼리 스트링 
<form action="/ex/board/checkId" method="post">
	<input type="text" name="id"><br>
	<input type="text" name="pw"><br>
	<input type="submit" value="전송"><br>
</form><br>


</body>
</html>