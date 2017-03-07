<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color:yellow" text="red">

welcome to here!
<!-- jsp:forward operation use the same request -->
<jsp:forward page = "forforward.jsp">
	<jsp:param name="name" value="m" />
	<jsp:param name="oldName" value='<%=request.getParameter("oldName") %>'/>
	<jsp:param name="roles" value="manager"/>
	</jsp:forward>
</body>
</html>