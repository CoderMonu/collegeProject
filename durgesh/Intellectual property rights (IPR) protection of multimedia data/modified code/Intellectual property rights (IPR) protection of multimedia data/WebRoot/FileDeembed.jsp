<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String genfile;
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
			<%
				if (request.getAttribute("status") != null) {
					out.println(request.getAttribute("status"));
				}
			%>
			<b><h3 onmouseover="style.color='black'"
					onmouseout="style.color='red'">
					VIDEO (or) AUDIO WATER MARKING
			</b>
			</h3>
		</center>

		<form action="./FileDeEmbedAction">
			<center>
				<table>
					<tr>
						<td align='right'>
							<b>Select DEEMBED WATERMARK file:</b>
						</td>
						<td align='right'>
							<input type="file" name="deembedfile" />
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
			<%
				if (request.getAttribute("deembedfile") != null) {
					genfile = (String) request.getAttribute("deembedfile");
			%><table>
				<tr>
					<td>
						<a href="<%=genfile%>"><b>Open :</b> </a>
					</td>
					<td>

						<b>FilePath :</b><%=genfile%>
					</td>
				</tr>
				<tr>
					<td align="right">
						<a href="./SendWaterMarkImage?image=<%=genfile%>"><img
								src='<%=request.getRealPath("./images") + "//Email.png"%>'
								height="20" /> </a> (MAIL)
					</td>

				</tr>
			</table>
			<%
				}
			%>
		</center>

	</body>
</html>
