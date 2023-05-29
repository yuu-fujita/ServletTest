<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ServletTest Form</title>
</head>
<body>
	
	<!--お問い合わせフォームの表示-->
	
	<h2>お問い合わせフォーム</h2>

	<form action="testform" method="post">
		<label for="name">氏名:</label>
		<input type="text" name="name" required><br><br>
		
		<label for="company">会社:</label>
		<input type="text" name="company"><br><br>
		
		<label for="email">メールアドレス:</label>
		<input type="text" name="email" required><br><br>
		
		<label for="message">お問合せ内容:</label>
		<textarea  name="message" rows="3" cols=30 required></textarea><br><br>
		
		<label>メルマガ種類:</label><br>
			<input type="checkbox" name="mailmaga" value="総合案内">総合案内<br>
			<input type="checkbox" name="mailmaga" value="セミナー案内">セミナー案内<br>
			<input type="checkbox" name="mailmaga" value="求人採用情報">求人採用情報<br>
		
		<label>資料請求希望:</label><br>
			<input type="radio" name="request" value="yes">Yes<br>
			<input type="radio" name="request" value="No">No<br>
		
		<input type="submit" value="送信">
	</form>

</body>
</html>