<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSP Declarations</title>
<meta name="author" content="Marty Hall">
<meta name="keywords" content="JSP,declarations,JavaServer,Pages,servlets">
<meta name="description" content="A quick example of JSP declarations">

<!-- meta label (http://baike.haosou.com/doc/4952447-5173979.html) -->
<!-- http://www.wm23.com/resource/R03/site_3032.htm -->
</head>

<body>
<H1>JSP Declarations</H1>

<%!
	int accessCount = 0;
	void m(){}
%>
<!-- above format means that accessCount is a global variable  -->

<%
	int accessCount2 = 0;
%>
<!-- above format means that accessCount2 is a local variable -->

<H2>Accesses to page since server reboot:
<%= ++accessCount+"(global_varialble by'=')"  %>
<!-- above format means that show the content in your page directly -->

<%= ++accessCount2+"||(local_variable)"  %>
</H2>
</body>
</html>