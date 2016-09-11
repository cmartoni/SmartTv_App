<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
			String nome = request.getParameter("nome");
			String sobrenome = request.getParameter("sobrenome");
			String email = request.getParameter("email");
			String series = request.getParameter("tvseries");
		
		
			if(nome !=null && nome !=""){
				session.setAttribute("logged", "yes");
				session.setAttribute("username", nome);
				session.setAttribute("tvseries", series);
				response.sendRedirect("../SmartTv_App.jsp"); 
			}
			else{
				session.setAttribute("logged", "no");
				session.setAttribute("username", "");
				session.setAttribute("tvseries", "");
				response.sendRedirect("form.html");
		}

	%>

</body>
</html>