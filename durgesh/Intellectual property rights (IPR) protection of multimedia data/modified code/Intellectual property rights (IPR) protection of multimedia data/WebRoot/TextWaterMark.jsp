<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'TextWaterMark.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	</head>

	<html>
		<head>
			<style>
p {
	text-align: right;
	color: blue;
}

/*h4{
         border-width:thick;
         border-style:solid;
         border-color:red;
         }*/
img {
	border-style: solid;
	border-color: black;
	border-width: thick;
}
</style>
		</head>
		<body background="page_bg.gif">
			<jsp:include page="Header.jsp"></jsp:include>
			<form action="./TextWaterMarkAction">
				<center>
					<table>
						<tr>
							<td>
								<b>Enter WaterMark TEXT:</b>
							</td>
							<td>
								<input type="text" name="markText" />
							</td>
						</tr>
						<tr>
							<td align='right'>
								<b>Enter Image URL:</b>
							</td>
							<td>
								<input type="file" name="imgPath" />
							</td>
						</tr>
						<tr>
							<td align='right'>
								<input type="submit" value="SUBMIT" />
							</td>
						</tr>
					</table>
				</center>
			</form>

			<center>
				<b>DEMO</b>

				<table>
					<tr>
						<td>
							<img src="./images/AK0053_fs2.jpg" height="200" />
						</td>
						<td>
							<img src="./images/AK0053_fs.jpg" height="200" />
						</td>
					</tr>
					<tr>
						<td>
							<b>Original Image</b>
						</td>
						<td>
							<b>WaterMarked Image</b>
						</td>
					</tr>
				</table>

			</center>
		</body>
	</html>
</html>
