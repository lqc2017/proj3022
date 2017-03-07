<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="bean.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Test bean scope</title>

<jsp:useBean id="request_Counterbean" class="bean.Counterbean" scope="request"/>
<!-- change request(turn to other page except this page or this page's son page) will rebuild -->
<jsp:useBean id="page_Counterbean" class="bean.Counterbean" scope="page"/>
<!-- change page will rebuild -->
<jsp:useBean id="application_Counterbean" class="bean.Counterbean" scope="application"/>
<!-- change browsers or session scope pass due will rebuild-->
<jsp:useBean id="session_Counterbean" class="bean.Counterbean" scope="session"/>
<!-- restart server will rebuild -->
<% 
	request_Counterbean.setCount(22);
	page_Counterbean.setCount(22);
%>

</head>
<body>

 <%-- 
<jsp:forward page="Testpage2.jsp"/>
--%>

<% 
response.sendRedirect("Testpage2.jsp");
%>

<%="page: " %>
<jsp:getProperty name="page_Counterbean" property="count"/>
<br>
<%="request:" %>
<jsp:getProperty name="request_Counterbean" property="count"/>
<br>
<%="session:" %>
<jsp:getProperty name="session_Counterbean" property="count"/>
<br>
<%="application:" %>
<jsp:getProperty name="application_Counterbean" property="count"/>

</body>
</html>