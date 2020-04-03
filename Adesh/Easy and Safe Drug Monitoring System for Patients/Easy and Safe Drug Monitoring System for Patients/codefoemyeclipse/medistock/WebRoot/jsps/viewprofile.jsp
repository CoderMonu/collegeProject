<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>

<%@ page errorPage="userexceptionhandler.jsp"%>
<%@page import="com.pharma.formbeans.profileformbean"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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
	--><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
		<%
			//String path;
			String usertype;
			String s;
		%>
		<%
			if (session.getAttribute("user") == null) {
				RequestDispatcher rd = request
						.getRequestDispatcher("./loginform.jsp");
				rd.forward(request, response);
		%>
		<%
			}
		%>

		<script language="JavaScript"
			src="<%=request.getContextPath() + "/js/gen_validatorv31.js"%>"
			type="text/javascript">
</script>
	</head>
	<body>
		&nbsp;
		<jsp:include page="header.jsp"></jsp:include>
		<br />
		<center>

		<%
			Vector c = (Vector) request.getAttribute("userinfo");
			Iterator it = c.listIterator();
			while (it.hasNext()) {
				profileformbean pro = (profileformbean) it.next();

				path = request.getRealPath("/images");
				s = path + "\\" + pro.getPhoto();
				System.out.println(s);
		%>


		<table bgcolor="" width="200" height="200">
			<tr bgcolor="">
				<td>
					<h1>
						<font color="white"> Profile
						</font>
					</h1>
				</td>
				<td>
					<img src="<%=pro.getPhoto()%>" height='100' width='100'>
				</td>
			</tr>
			<tr>
				<td>
					Name :
				</td>
				<td>
					<b><%=pro.getFirstName()%>&nbsp</b><b><%=pro.getLastName()%></b>
				</td>
			</tr>
			<tr>
				<td>
					Date Of Birth :
				</td>
				<td>
					<b><%=pro.getBirthdate()%></b>
				</td>
			</tr>
			<tr>
				<td>
					Contact :
				</td>
				<td>
					<b>mail :<%=pro.getEmail()%></b>
					<br>
					<b>Fax :<%=pro.getFax()%></b>
					<br>

					<b>Ph : <%=pro.getPhoneNo()%>
				</td>
			</tr>
			<tr>
				<td>
					<%=pro.getAddressType()%>
					&nbsp Address :
				</td>
				<td>
					<b>Hno :<%=pro.getHouseNo()%></b>
					<br>
					<b>Street:<%=pro.getStreet()%> </b>
					<br>
					<b>City:<%=pro.getCity()%></b>
					<br>
					<b>State:<%=pro.getState()%></b>
					<br>
					<b>Country:<%=pro.getCountry()%></b>
					<br>
					<b>Pin:<%=pro.getPin()%></b>
				</td>
			</tr>
		</table>
		<input type='hidden' name='userName' value="<%=pro.getUserid()%>">


		<%
			}
		%>

		</center><br><br>
		<jsp:include page="footer.jsp"></jsp:include>
	</body>