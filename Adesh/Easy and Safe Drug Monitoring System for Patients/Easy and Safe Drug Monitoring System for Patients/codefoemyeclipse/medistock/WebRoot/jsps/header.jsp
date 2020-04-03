<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
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
		<script type="text/javascript" src="scripts/curser.js">
</script>

		<title>My JSP 'Header.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	</head>

	<body bgcolor='#5F9EA0'>
		<table align="center">
			<tr>
				<td>
					<img src="./images/imagesll.jpeg" align='top' height='220'
						width='970'>
				</td>
			</tr>
		</table>
		<table width="100%" align="center" height="">
			<tr>
				<c:choose>
					<c:when test="${sessionScope.role=='Admin'}">
						<jsp:include page="./adminmenu.jsp" />
					</c:when>
					
					<c:when test="${sessionScope.role=='customer'}">
						<jsp:include page="./customermenu.jsp" />
					</c:when>
					<c:when test="${sessionScope.role=='dealer'}">
						<jsp:include page="./dealermenu.jsp" />
					</c:when>
					<c:when test="${sessionScope.role=='employee'}">
						<jsp:include page="./employeemenu.jsp" />
					</c:when>
					<c:otherwise>
						<jsp:include page="./menubeforelogin.jsp" />
					</c:otherwise>
				</c:choose>
		</table>

		<center>
			<font color="red"> <c:if
					test="${'requestScope.status'!='null'}">

					<c:out value="${requestScope.status}"></c:out>
				</c:if> </font>
		</center>

		<br />
		<br />


	</body>
</html>
