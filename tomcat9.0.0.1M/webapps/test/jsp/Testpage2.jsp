<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>skip page</title>

<jsp:useBean id="request_Counterbean" class="bean.Counterbean" scope="request"/>
<%
		out.println("the request_Counterbean attribute value is:"+request_Counterbean.getCount());
%>
<br>
<jsp:useBean id="page_Counterbean" class="bean.Counterbean" scope="page"/>
<%
		out.println("the page_Counterbean attribute value is:"+page_Counterbean.getCount());
%>
<br>
<jsp:useBean id="application_Counterbean" class="bean.Counterbean" scope="application"/>
<%
		out.println("the application_Counterbean attribute value is:"+application_Counterbean.getCount());
%>
<br>
<jsp:useBean id="session_Counterbean" class="bean.Counterbean" scope="session"/>
<%
		out.println("the session_Counterbean attribute value is:"+session_Counterbean.getCount());
%>
<br>

</head>
<body>

<h1>This is skip page</h1>
<h2>test all scope bean</h2>
<%--
<%
	if(request_Counterbean==null)
		out.println("request_Counterbean!=null");
	else{
		out.println("request_Counterbean exist");
		out.println("the value is:"+request_Counterbean.getCount());
}
%>
<br>
<% 
	if(page_Counterbean==null)
		out.println("page_Counterbean!=null");
	else{
		out.println("page_Counterbean exist");
		out.println(page_Counterbean.getCount());
	}
%>
<br>
<% 
	if(session_Counterbean==null)
		out.println("session_Counterbean!=null");
	else{
		out.println("session_Counterbean exist");
		out.println(session_Counterbean.getCount());
	}
%>
<br>
<% 	
	if(application_Counterbean==null)
		out.println("application_Counterbean!=null");
	else{
		out.println("application_Counterbean exist");
		out.println(application_Counterbean.getCount());
	}
%>
--%>


</body>
</html>