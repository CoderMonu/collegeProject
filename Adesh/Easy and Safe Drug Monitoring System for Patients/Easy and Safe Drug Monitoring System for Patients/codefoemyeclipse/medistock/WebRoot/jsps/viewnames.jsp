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

	</head>

	<body>
		<jsp:include page="header.jsp"></jsp:include>
		<h2 align="center">
			<font color="white">MedicinesList</font>
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
						<strong>ManufactureDate</strong>
					</div>
				</td>
				<td>
					<div align="center">
						<strong>Expiry Date</strong>
					</div>
				</td>


				<td>
					<div align="center">
						<strong>TimePeriod<br />(BestBefore)</strong>
					</div>
				</td>
				<td>
					<div align="center">
						<strong>UsedFor<br />(Purpose of Medicine)</strong>
					</div>
				</td>
				<td>
					<div align="center">
						<strong>AvailableQuantity<br />Tablets</strong>
					</div>
				</td>
				<td>
					<div align="center">
						<strong>Price<br />Rs/tablet</strong>
					</div>
				</td>
				<td>
					<div align="center">
						<strong>Order</strong>
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
							<b> ${medicalinfo.manufacturedate}</b>
						</td>
						<td align='center'>
							<b> ${medicalinfo.expirydate}</b>
						</td>

						<td align='center'>
							<b> ${medicalinfo.timeperiod}</b>
						</td>
						<td align='center'>
							<b> ${medicalinfo.purpose}</b>
						</td>
						<td align='center'>
							<b> ${medicalinfo.avail_quantity}</b>
						</td>
						<td align='center'>
							<b> ${medicalinfo.price}</b>
						</td>
						
						<td align='center'>
							<a
								href="./jsps/order.jsp?productid=${medicalinfo.productid}&userid=${medicalinfo.userid}&avail=${medicalinfo.avail_quantity}&medicinename=${medicalinfo.medicinename}&price=${medicalinfo.price}">Buy</a>
						</td>
						<td align='center'>
							<b> <input type="hidden" value="${medicalinfo.userid}"/></b>
						</td>
					</tr>
				</c:forEach>
			</c:if>
		</table>

	</body>
</html>
