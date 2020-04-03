<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="com.pharma.bean.MedicalInfoTo"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%
	int count = 0;
	String Reports = "";
	Iterator it = null;
	MedicalInfoTo mto = null;
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'viewnames.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<%
			if (session.getAttribute("loginid") == null) {
				RequestDispatcher rd = request
						.getRequestDispatcher("./loginform.jsp");
				rd.forward(request, response);
		%>
		<%
			}
		%>
	</head>

	<body>
		<jsp:include page="header.jsp"></jsp:include>
		<h2 align="center">
			<font color="white">Payment Details</font>
		</h2>
		<table align="center" border="4">
			<tr bgcolor="">
				<td>
					<div align="center">
						<strong>Medicine Name</strong>
					</div>
				</td>
				<td>
					<div align="center">
						<strong>Price</strong>
					</div>
				</td>
				<td>
					<div align="center">
						<strong>Order_Quantity</strong>
					</div>
				</td>


				<td>
					<div align="center">
						<strong>Order_date</strong>
					</div>
				</td>
				<td>
					<div align="center">
						<strong>PaymentMode</strong>
					</div>
				</td>
				<td>
					<div align="center">
						<strong>PayedDate</strong>
					</div>
				</td>
				<td>
					<div align="center">
						<strong>TotalCost</strong>
					</div>
				</td>
				<td>
					<div align="center">
						<strong>Name</strong>
					</div>
				</td>
			</tr>
			<c:if test="${not empty medicalinfo}">
				<c:forEach var="medicalinfo" items="${medicalinfo}">
					<tr>
						<td align='center'>
							<b>${medicalinfo.medicinename}</b>
						</td>

						<td align='center'>
							<b> ${medicalinfo.price}</b>
						</td>
						<td align='center'>
							<b> ${medicalinfo.orderquantity}</b>
						</td>

						<td align='center'>
							<b> ${medicalinfo.order_date}</b>
						</td>
						<td align='center'>
							<b> ${medicalinfo.paymentmode}</b>
						</td>
						<td align='center'>
							<b> ${medicalinfo.pay_date}</b>
						</td>
						<td align='center'>
							<b> ${medicalinfo.totalprice}</b>
						</td>
						<td align='center'>
							<b> ${medicalinfo.loginid}</b>
						</td>
					</tr>
				</c:forEach>
			</c:if>
		</table>

	</body>
</html>
