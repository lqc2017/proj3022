<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Color Setting</title>

<!-- html annotation(visible in source code) -->

<%-- normal annotation1 by"--" --%>

<%// java annotation2 by"//"or"/*" %>
<% 
String bgColor = request.getParameter("bgColor");
//add parameters by URL
/*String is a basic class in java,so 
	it is not necessary to declare in jsp*/
	
boolean hasExplicitColor;
if (bgColor != null){
	hasExplicitColor = true;
} else {
	hasExplicitColor = false;
	bgColor = "WHITE";
}
%>
</head>
<body bgcolor="<%=bgColor %>">
<H2 align="center">Color Testing</H2>

<%
if(hasExplicitColor) {
	out.println("You supplied n explicit background color of "+
bgColor + ".");
	//out is a internally installed outputstream
} else {
	out.println("Using default background color of WHITE.\n"
			+"Supply the bgColor request attribute to try\n"
			+"a standard color,an RRGGBB value,or to see \n"
			+"if your brower supports Xll color names\n");
}
%>

</body>
</html>