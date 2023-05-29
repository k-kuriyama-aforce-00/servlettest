<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%	String name = request.getParameter("name");
	String company = request.getParameter("company");
	String mail = request.getParameter("mail");
	String contact = request.getParameter("contact");
	String[] mailmgs = request.getParameterValues("mailmg");
	String radio = request.getParameter("radio");
%>
<p>氏名：<%=name%></p>
<P>会社：<%=company%></P>
<p>メールアドレス：<%=mail %></p>
<p>メルマガ：</p>
<% if(mailmgs != null){ %>	
<% for(String mailmg: mailmgs){ %>
    <%=mailmg %><br>
<% }}%>
<p>お問い合わせ内容：<%=contact%></p>
<p>資料請求:この度は資料請求いただきありがとうございます。以下のリンクから資料ダウンロードが可能です。<a href="https://www.a-force.biz/">こちら</a></p>

</body>
</html>