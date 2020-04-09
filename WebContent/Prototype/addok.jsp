<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="model.TWorder"
    import="DAO.TWorderDAO"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Here's your order</title>
</head>
<link rel="stylesheet" type="text/css" href="CssModel.css">

<%
TWorder T=(TWorder)session.getAttribute("TT");
//sesstion.getAttribute先抓之前設定成session的全區變數TW
//然後為了下面能使用TWorder的getter（所以要將變數TW，再轉換成TWorder物件)
%>

<body>

<div class="header"><h1>Here's your order</h1></div>

<div class="content">


	<table width="300" align=center border=1>
		<tr>
			<td colspan=2 align=center>  Your Table number：<%=T.getTableID() %>
		<tr>
			<td width=100>Pork
			<td><%=T.getPork() %>
		<tr>
			<td>Fish
			<td><%=T.getFish() %>
		<tr>
			<td>Beer
			<td><%=T.getBeer() %>
		<tr>
			<td>Spirit
			<td><%=T.getSpirit() %>
		<tr>
			<td>Sum
			<td><%=T.getSum() %>
	
	</table>

</div>
<div class="footer">
<h3><a href="index.jsp">HOME</a></h3>
</div>

<%
//session.removeAttribute("TT");//session的全區變數使用完後，如果不要浪費記憶體，可以remove掉
%>

</body>
</html>