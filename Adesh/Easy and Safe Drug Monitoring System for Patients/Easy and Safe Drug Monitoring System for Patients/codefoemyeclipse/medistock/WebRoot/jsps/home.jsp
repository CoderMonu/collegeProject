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

		<title>My JSP 'articles.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<script type="text/javascript">
function disableBackButton() {
	window.history.forward();
}
setTimeout("disableBackButton()", 0);
</script>
	</head>
	<body  bgcolor="">
		<jsp:include page="header.jsp"></jsp:include>
		<br/><br/>
		
		<br />
		<br />
		<br />
		<br /><jsp:include page="footer.jsp"></jsp:include>
	</body>
</html>
