<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ServletTest Result</title>
</head>
<body>
	
	<!--受け取ったお問い合わせフォームの結果を表示-->
	<h2>お問い合わせフォームの入力内容です。</h2>
	<%
		String name = (String) request.getAttribute("name");
		String company = (String) request.getAttribute("company");
		String email = (String) request.getAttribute("email");
		String message = (String) request.getAttribute("message");
		String[] mailmagas = (String[]) request.getAttribute("mailmagas");
		String requestType = (String) request.getAttribute("requestType");
	%>
		<p>氏名: <%= name %></p>
		<p>会社: <%= (company != null) ? company : "" %></p>
		<p>メールアドレス: <%= email %></p>
		<p>お問合せ内容: <%= message %></p>
		<p>メルマガ種類:</p>
	<%
		if(mailmagas != null){
			for(String mailmaga : mailmagas){
				out.println("<p>　・" + mailmaga + "</p>");
			}
		}
	%>
	
		<p>資料請求希望:<%= requestType %></p>
	
	<%
		if("yes".equals(requestType)) {
			out.println("<p>この度は資料請求いただきありがとうございます。以下のリンクから資料ダウンロード可能です。</p>");
			out.println("<a href=\"#\">※資料DLはこちら</a>");
		}
	%>

</body>
</html>