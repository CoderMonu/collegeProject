<%@ page isErrorPage="true" import="java.io.*" %>
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'articles.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<%
 String usertype;
 %>
<%
	if (session.getAttribute("user") == null) {
		RequestDispatcher rd = request
				.getRequestDispatcher("./loginform.jsp");
		rd.forward(request, response);}
%>

	<title>Exception Even Occurred!</title>
	<style>
	body, p { font-family:Tahoma; font-size:10pt;
        padding-left:30; }
	pre { font-size:8pt; }
	</style>
</head>
<body>
		<jsp:include page="header.jsp"></jsp:include>
		<br />
			<center>
			<h1><font color="white">
				
				<%
					if (request.getParameter("role").equalsIgnoreCase("dealer")) {
										usertype = "DEALER";
									}
									else if (request.getParameter("role").equalsIgnoreCase("employee")) {
										usertype = "EMPLOYEE";
									}

									else
										usertype = "CUSTOMER";
				%>
				<%=usertype%>
				DETAILS
				</font>
			</h1>
			<table border='1'>
				<tr bgcolor=''>
					<td align='center'>
						<b>Sno</b>
					</td>
					<td align='center'>
						<b>Name </b>
					</td>
					<td align='center'>
						<b>Gender </b>
					</td>
					<td align='center'>
						<b>Contact </b>
					</td>
					<td align='center'>
						<b>Address </b>
					</td>
					<td align='center'>
						<b>Photo </b>
					</td></tr>
					<tr><td align='center' colspan='6'><font color="red"><b>NO USERS
							AVAILABLE</b><input type='hidden'
value="<%= exception.toString() %>"></font></td></tr></table>

<%
out.println("<!--");
StringWriter sw = new StringWriter();
PrintWriter pw = new PrintWriter(sw);
exception.printStackTrace(pw);
//out.print(sw);
sw.close();
pw.close();
out.println("-->");
%>
</center>
<jsp:include page="footer.jsp"></jsp:include>
</body>