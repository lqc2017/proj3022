<%@ page language="java" contentType="text/html; charset=UTF-8" 
	 %>
<%@ page import="bean.*"%>
<% 
	//request.setCharacterEncoding("GBK");
	//if use above preprocessing please match to line 32 jsp:getproperty format
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HelloBean</title>

<jsp:useBean id="hello" class="bean.HelloBean" scope="request" >
	<jsp:setProperty name="hello" property="*" />
	<!-- 
	property="x" means you can set this bean property by a form
	(definite the action attribute),precondition is form content
	labels' name correspond the bean's property.this use modality
	always make mistake because form label names not usually match
	bean properties' name.
	-->
</jsp:useBean>

</head>
<body bgcolor="#FFFFFF">

<p>&nbsp;</p>
<p align="center">
<font size="4">欢迎
<font color="#0000FF"><b>

<%=new String(hello.getName().getBytes("ISO8859_1"),"UTF-8") %>
<%-- String constructor second parameter match to page contenType(1 line) --%>
</b></font>
<%=new String(hello.getSex().getBytes("ISO8859_1"),"UTF-8") %>
</font></p>

<!--jsp:getProperty name="hello" property="sex"/-->

</body>
</html>