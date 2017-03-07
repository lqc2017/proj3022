<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="bean.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>use jsp:seProperty</title>
</head>
<body>

<table border="5" align="center">
<tr><th>using jsp:setProperty</th></tr>

<jsp:useBean id="entry" class="bean.SaleEntry"/>

</table>
<% //request.setCharacterEncoding("GBK") %>
<jsp:setProperty name="entry" property="itemID" value='<%=request.getParameter("itemID")%>' />
<jsp:setProperty name="entry" property="numItems" param="numItems"/>
<jsp:setProperty name="entry" property="discountCode" param="discountCode"/>
<!-- param and value send Parameter is the same function(by URL) -->

<br>
<table align="center" border="1">
<tr class="COlOR">
<th>Item ID<th>Unit Price<th>Number ordered<th>Total Price
<tr align="right">
<td><jsp:getProperty name="entry" property="itemID"/>
<td>$<jsp:getProperty name="entry" property="itemCost"/>
<td><jsp:getProperty name="entry" property="numItems"/>
<td>$<jsp:getProperty name="entry" property="totalCost"/>
<!-- about totalCost ,it is not real property,but it would find about this function though this property name-->
</table>

</body>
</html>