<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="bean.*" %>
   <!-- similar to java grammar import! -->
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>use java bean</title>
<!-- java is the java class which has the attributes -->

</head>
<body>
<% 
Counterbean cb = new Counterbean();
%>

<%--
<jsp:useBean id="cb" class="bean.Counterbean" scope="page">
<!-- useBean scope attribute default available is page -->
</jsp:useBean>

<jsp:useBean>
	<jsp:setProperty name="cb" property="count" value="23"/>
	<jsp:setProperty name="cb" property="count"/>
</jsp:useBean>
--%>

<font color="red" size="5">
	<%= cb.getCount() %>
</font>

</body> 
</html>