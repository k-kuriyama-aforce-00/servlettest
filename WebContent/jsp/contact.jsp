<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="../servlet/contact" method="post">
	<p>氏名<input type="text" name="name"  required></p>
	<p>会社<input type="text" name="company" ></p>
	<p>メールアドレス<input type="text" name="mail"  required></p>
	<p>お問い合わせ内容<br><textarea rows="10" cols="30"  name="contact" required></textarea></p>
	<p>メルマガ種類
		<input type="checkbox" name="mailmg" value="総合案内">総合案内
		<input type="checkbox" name="mailmg" value="セミナー案内">セミナー案内
		<input type="checkbox" name="mailmg" value="求人採用情報">求人採用情報
	</p>
	<p>資料請求
		<input type="radio"  name="radio" value="Yes">Yes
		<input type="radio"  name="radio" value="No">No
	</p>	
	<input type="submit" value="enter">
	
</form>

</body>
</html> 