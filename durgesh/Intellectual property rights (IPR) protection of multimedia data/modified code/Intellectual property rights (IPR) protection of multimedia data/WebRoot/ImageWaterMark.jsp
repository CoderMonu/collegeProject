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

		<title>My JSP 'ImageWaterMark.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	</head>


	<body background="page_bg.gif">
		<jsp:include page="Header.jsp"></jsp:include>
		<br>
		<br>
		<br>

		<center>
			<b><h3 onmouseover="style.color='black'"
					onmouseout="style.color='red'">
					IMAGE WATER MARKING
			</b>
			</h3>
		</center>

		<form action="./ImageWaterMarkAction">
			<center>
				<table>
					<tr>
						<td>
							<b>Enter Watermark URL:</b>
						</td>
						<td>
							<input type="file" name="firstImagePath" />
						</td>
					</tr>
					<tr>

						<td>
							<b>Enter Image URL:</b>
						</td>
						<td>
							<input type="file" name="secondImagePath" />
						</td>
					</tr>
					<tr>
						<td colspaan='2' align=center>
							<input type="submit" value="SUBMIT" />
						</td>
					</tr>
				</table>
		</form>




		<center>
			<table>
				<tr>
					<td>
						<img src="./images/bg4.bmp" height='100' width='100' />
						<br>
						Original Image
						</br>
					</td>
					<td>

						<img src="./images/Sunset.jpg" height='100' width='100' />
						<br>
						WaterMark Image
						</br>
					</td>
					<td>
						<img src="./images/hide.jpg" height='100' width='100' />
						<br>
						WaterMarked Image
						</br>
					</td>
				</tr>
			</table>
		</center>
	</body>
</html>
