<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="model.TWorder"
    import="DAO.TWorderDAO"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% 
	int ID=Integer.parseInt(request.getParameter("id"));
	int PORK=Integer.parseInt(request.getParameter("pork"));
	int FISH=Integer.parseInt(request.getParameter("fish"));
	int BEER=Integer.parseInt(request.getParameter("beer"));
	int SPIRIT=Integer.parseInt(request.getParameter("spirit"));
	
	TWorder T=new TWorder();
	T.setTableID(ID);
	T.setPork(PORK);
	T.setFish(FISH);
	T.setBeer(BEER);
	T.setSpirit(SPIRIT);
	
	int sum=T.getSum();
	
	new TWorderDAO().add(T);
	
	session.setAttribute("TT", T);
	//若只有上面的Object T，不能提供給其他頁面用，要經過session轉換成全區變數，隨便命名即可（TW)
	
	response.sendRedirect("../addok.jsp");
	//response是將這一頁Controller的結果丟給某頁面（addok.jsp); 要指定資料夾（../是上一頁的意思）

	
%>

</body>
</html>