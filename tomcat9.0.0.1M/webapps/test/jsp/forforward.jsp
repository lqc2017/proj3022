<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color:black" text="white">
here is the forforward page
<br>
<%="parameter name(define value in forward page) is: "+request.getParameter("name") %>
<br>
<%="parameter oldname is: "+request.getParameter("oldName") %>
<br>
<%="parameter roles(define value in forward page) is: "+request.getParameter("roles") %>
<br>
<%="parameter uuu(not from forward page) is: "+request.getParameter("uuu") %>
</body>
</html>